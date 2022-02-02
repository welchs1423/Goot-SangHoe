package org.choonsik.mapper;

import java.util.List;

import org.choonsik.domain.BoardVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.NoticeVO;

public interface BoardMapper {

	public BoardVO readinquiry(long bno);
	public NoticeVO readnotice(long nno);
	public int getTotalinquiry();
	public int getTotalnotice();

	public List<BoardVO> getinquirylist(Criteria cri);
	public List<NoticeVO> getnoticelist(Criteria cri);
	
	public int updateReplyCnt(long bno);
	public int noticeviewcnt(long nno);
	public int boardviewcnt(long bno);
	public int insertnotice(NoticeVO notice);
	public int insertinquiry(BoardVO board);
	public int modifynotice(NoticeVO notice);
	public int removenotice(long nno);
	public int modifyinquiry(BoardVO board);
	public int removeinquiry(long bno);
	
	
}
