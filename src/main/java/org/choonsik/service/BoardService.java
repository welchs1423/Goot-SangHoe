package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.BoardVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.NoticeVO;

public interface BoardService {
	public List<BoardVO> getinquirylist(Criteria cri);
	public List<NoticeVO> getnoticelist(Criteria cri);
	public int getTotalinquiry();
	public int getTotalnotice();
	public NoticeVO getnotice(long nno);
	public BoardVO getinquiry(long bno);
	public int noticeviewcnt(long nno);
	public int boardviewcnt(long bno);
	public int nregister(NoticeVO notice);
	public int iregister(BoardVO board);
	public boolean modifynotice(NoticeVO notice);
	public boolean removenotice(long nno);
	public boolean modifyinqruiy(BoardVO board);
	public boolean removeinquiry(long bno);
	public boolean updateReplyCnt(long bno);
}
