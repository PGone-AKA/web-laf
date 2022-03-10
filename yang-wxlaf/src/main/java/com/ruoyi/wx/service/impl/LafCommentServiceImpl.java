package com.ruoyi.wx.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wx.domain.LafStudent;
import com.ruoyi.wx.mapper.LafStudentMapper;
import com.ruoyi.wx.util.commet.CommentDetail;
import com.ruoyi.wx.util.commet.CommentTree;
import com.ruoyi.wx.util.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wx.mapper.LafCommentMapper;
import com.ruoyi.wx.domain.LafComment;
import com.ruoyi.wx.service.ILafCommentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 帖子留言Service业务层处理
 * 
 * @author yang
 * @date 2021-12-22
 */
@Service
public class LafCommentServiceImpl implements ILafCommentService
{
    @Autowired
    private LafCommentMapper lafCommentMapper;
    @Autowired
    private LafStudentMapper lafStudentMapper;

    private List<CommentDetail> commentDetails;

    /**
     * 查询帖子留言
     * 
     * @param comId 帖子留言主键
     * @return 帖子留言
     */
    @Override
    public LafComment selectLafCommentByComId(Long comId)
    {
        return lafCommentMapper.selectLafCommentByComId(comId);
    }

    /**
     * 查询帖子留言列表
     * 
     * @param lafComment 帖子留言
     * @return 帖子留言
     */
    @Override
    public List<LafComment> selectLafCommentList(LafComment lafComment)
    {
        return lafCommentMapper.selectLafCommentList(lafComment);
    }

    /**
     * 新增帖子留言
     * 
     * @param lafComment 帖子留言
     * @return 结果
     */
    @Override
    public int insertLafComment(LafComment lafComment)
    {
        lafComment.setCreateTime(DateUtils.getNowDate());
        return lafCommentMapper.insertLafComment(lafComment);
    }

    /**
     * 修改帖子留言
     * 
     * @param lafComment 帖子留言
     * @return 结果
     */
    @Override
    public int updateLafComment(LafComment lafComment)
    {
        return lafCommentMapper.updateLafComment(lafComment);
    }

    /**
     * 批量删除帖子留言
     * 
     * @param comIds 需要删除的帖子留言主键
     * @return 结果
     */
    @Override
    public int deleteLafCommentByComIds(String comIds)
    {
        return lafCommentMapper.deleteLafCommentByComIds(Convert.toStrArray(comIds));
    }

    /**
     * 删除帖子留言信息
     * 
     * @param comId 帖子留言主键
     * @return 结果
     */
    @Override
    public int deleteLafCommentByComId(Long comId)
    {
        return lafCommentMapper.deleteLafCommentByComId(comId);
    }

    /**
     * 查询帖子留言树列表
     * 
     * @return 所有帖子留言信息
     */
    @Override
    public List<Ztree> selectLafCommentTree()
    {
        List<LafComment> lafCommentList = lafCommentMapper.selectLafCommentList(new LafComment());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (LafComment lafComment : lafCommentList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(lafComment.getComId());
            ztree.setpId(lafComment.getParentId());
            ztree.setName(lafComment.getComContent());
            ztree.setTitle(lafComment.getComContent());
            ztrees.add(ztree);
        }
        return ztrees;
    }

    /**
     * 通过帖子ID查看评论
     * @param relID
     * @return
     */

    @Override
    public List<CommentDetail> selectLafCommentByTid(Long relID) {
        LafComment lafComment = new LafComment();
        lafComment.setComRelId(relID);

        List<LafComment> commentList = lafCommentMapper.selectWxLafCommentList(lafComment);

        List<CommentDetail> commentDetailList = new ArrayList<>();
        for (LafComment item:commentList
             ) {
            LafStudent student1 = lafStudentMapper.selectLafStudentByStuId(item.getComStuId());
            User user1 = new User(student1.getStuImage(),student1.getStuNick(),student1.getStuSex(),student1.getStuId());

            LafComment comment = lafCommentMapper.selectLafCommentByComId(item.getParentId());
            Long replyUid = null;
            User user2 = new User();
            if (comment!=null){
                replyUid = comment.getComStuId();
                LafStudent student2 = lafStudentMapper.selectLafStudentByStuId(replyUid);
                user2.setAvatar(student2.getStuImage());
                user2.setNickName(student2.getStuNick());
                user2.setGender(student2.getStuSex());
                user2.setUid(student2.getStuId());
            }
            commentDetailList.add(new CommentDetail(item,user1,user2));
        }
        return commentDetailList;
    }

    /**
     * 通过帖子ID查看评论
     * @param relID
     * @return
     */

    public List<CommentTree> testComment(Long relID) {
        //获取一级评论
        LafComment lafComment = new LafComment();
        lafComment.setComRelId(relID);
        List<LafComment> commentList = lafCommentMapper.selectWxLafCommentList(lafComment);
        List<CommentTree> commentTree = new ArrayList<>();
        for (LafComment item:commentList
        ) {
            this.commentDetails = new ArrayList<>();
            LafStudent student1 = lafStudentMapper.selectLafStudentByStuId(item.getComStuId());
            User user1 = new User(student1.getStuImage(),student1.getStuNick(),student1.getStuSex(),student1.getStuId());

            LafComment comment = lafCommentMapper.selectLafCommentByComId(item.getParentId());
            User user2 = new User();
            //获取二级评论列表
            List<CommentDetail> commentDetailList = treeComments(item.getComId());
            CommentDetail commentDetail = new CommentDetail(item,user1,user2);
            commentTree.add(new CommentTree(commentDetail,commentDetailList));
        }
        return commentTree;
    }
    public List<CommentDetail> treeComments(Long pid){

        LafComment lafComment = new LafComment();
        lafComment.setParentId(pid);
        List<LafComment> commentList = lafCommentMapper.selectWxLafCommentList(lafComment);
        if (commentList.size()==0){
            return null;
        }
        //获取二级评论信息
        for (LafComment item: commentList
             ) {

            //获取评论者个人信息
            LafStudent student1 = lafStudentMapper.selectLafStudentByStuId(item.getComStuId());
            User user1 = new User(student1.getStuImage(),student1.getStuNick(),student1.getStuSex(),student1.getStuId());
            //获取回复者个人信息
            LafComment comment = lafCommentMapper.selectLafCommentByComId(pid);
            LafStudent student2 = lafStudentMapper.selectLafStudentByStuId(comment.getComStuId());
            User user2 = new User(student2.getStuImage(),student2.getStuNick(),student2.getStuSex(),student2.getStuId());
            CommentDetail commentDetail = new CommentDetail(item,user1,user2);
            //添加到回复列表
            this.commentDetails.add(commentDetail);
            //递归
            treeComments(commentDetail.getComment().getComId());
        }
        return this.commentDetails;
    }

}
