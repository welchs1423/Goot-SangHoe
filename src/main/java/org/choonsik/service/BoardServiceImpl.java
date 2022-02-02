package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.BoardVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.NoticeVO;
import org.choonsik.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getinquirylist(Criteria cri) {
		log.info("getinquirylist...");
		return mapper.getinquirylist(cri);
	}

	@Override
	public List<NoticeVO> getnoticelist(Criteria cri) {
		log.info("getinquirylist...");
		return mapper.getnoticelist(cri);
	}

	@Override
	public int getTotalinquiry() {
		log.info("getTotalinquiry...");
		return mapper.getTotalinquiry();
	}

	@Override
	public int getTotalnotice() {
		log.info("getTotalnotice...");
		return mapper.getTotalnotice();
	}

	@Override
	public NoticeVO getnotice(long nno) {
		log.info("getnotice..." + nno);
		return mapper.readnotice(nno);
	}

	@Override
	public BoardVO getinquiry(long bno) {
		log.info("getinquiry..." + bno);
		return mapper.readinquiry(bno);
	}

	@Override
	public int noticeviewcnt(long nno) {
		log.info("noticeviewcnt.. + 1");
		return mapper.noticeviewcnt(nno);
	}

	@Override
	public int boardviewcnt(long bno) {
		log.info("boardviewcnt.. + 1");
		return mapper.boardviewcnt(bno);
	}
	
	@Transactional
	@Override
	public int nregister(NoticeVO notice) {
		log.info("noticeregister..." + notice);
		
		int result = mapper.insertnotice(notice);
		
		return result;
	}
	
	@Transactional
	@Override
	public int iregister(BoardVO board) {
		log.info("inquiryregister..." + board);
		
		int result = mapper.insertinquiry(board);
		
		return result;
	}

	@Override
	public boolean modifynotice(NoticeVO notice) {
		log.info("modifynotice..." + notice);
		return mapper.modifynotice(notice) == 1;
	}
	
	@Override
	public boolean removenotice(long nno) {
		log.info("removenotice..." + nno);
		return mapper.removenotice(nno) == 1;
	}

	@Override
	public boolean modifyinqruiy(BoardVO board) {
		log.info("modifyinquiry..." + board);
		return mapper.modifyinquiry(board) == 1;
	}

	@Override
	public boolean removeinquiry(long bno) {
		log.info("removenotice..." + bno);
		return mapper.removeinquiry(bno) == 1;
	}

	@Override
	public boolean updateReplyCnt(long bno) {
		log.info("updateReplyCnt" + bno);
		return mapper.updateReplyCnt(bno) == 1;
	}

}
