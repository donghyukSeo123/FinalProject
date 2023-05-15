package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.comment.vo.CommentVO;

public interface CommentMapper {

	public void insertComment(CommentVO commVO);
	public List<CommentVO> commentList(int boardId);
//댓글 수정
	public void modifyComment(CommentVO commentVO);
	//삭제
	public int commDelete(int commId);

}
