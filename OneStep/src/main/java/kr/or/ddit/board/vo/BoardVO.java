package kr.or.ddit.board.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.AttVO;
import lombok.Data;

@Data
public class BoardVO {
	
	private int boardId;
	private String memId;
	private String boardTitle;
	private String boardContent;
	private Date boardStart;
	private String boardHit;
	private String boardWarn;
	private int boardCategory;
	private int recnt;
	private int goodCnt;
	private int boardGot; // 공지사항 고정
	private String boardCal; // 공지사항 분류
//	private String svg;
	
	private Integer[] delBoardId;
	private MultipartFile[] boardFile;
	private List<AttVO> boardFileList;
	
	
	public void setBoardFile(MultipartFile[] boardFile) {
		this.boardFile=boardFile;
		if(boardFile !=null) {
			List<AttVO> boardFileList = new ArrayList<AttVO>();
			for(MultipartFile item : boardFile) {
				if(StringUtils.isBlank(item.getOriginalFilename())) {
					continue;
				}
				AttVO boardFileVO = new AttVO(item);
				boardFileList.add(boardFileVO);
			}
			this.boardFileList = boardFileList;
		}
	}
}
