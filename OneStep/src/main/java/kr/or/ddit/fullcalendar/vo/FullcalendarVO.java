package kr.or.ddit.fullcalendar.vo;

import java.util.Date;
import java.util.List;

import kr.or.ddit.vo.AnnoVO;
import lombok.Data;

@Data
public class FullcalendarVO {

	private int calId;
	private String calTitle;
	private String calContent;
	private String calStart;
	private String calEnd;
	private String memId;
	private int annoId;
	private String id;
	private String label;
	
	
}
