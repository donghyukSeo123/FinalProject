package kr.or.ddit.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.master.vo.SeoVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.vo.ReportVO;

public interface MasterMapper {

	public List<MemberVO> list() throws Exception;

	public int status(@Param("memStatus") String memStatus, @Param("memId") String memId) throws Exception;

	public List<ReportVO> reportList() throws Exception;

	public List<ReportVO> reportCnt() throws Exception;

	public void insertBlack(String memId) throws Exception;

	public void updateBlack1(String memId) throws Exception;

	public String selectOneId(String memId) throws Exception;

	public void updateBlack2(String memId);

	public int reportStatus(int reportId);

	public List<ReportVO> reportAllCnt();

	public List<MemberVO> companyList();

	public SeoVO selectYearData(int date);



}
