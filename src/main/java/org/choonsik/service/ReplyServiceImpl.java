package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.Criteria;
import org.choonsik.domain.ReplyVO;
import org.choonsik.mapper.BoardMapper;
import org.choonsik.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
//	public int register(ReplyVO vo) {
//		log.info("register ... " + vo);
//		
//		boardMapper.updateReplyCnt(vo.getBno(), 1);
//		
//		return mapper.insert(vo);
//	}
	
	@Override
	public List<ReplyVO> getList(long bno, Criteria cri) {
		log.info("getList ... " + bno);
		return mapper.replyList(bno, cri);
	}
	
	@Transactional
	@Override
	public int create(ReplyVO vo) {
		log.info("create ... " + vo);
		
		int result = mapper.create(vo);
		
		return result;
	}

	@Override
	public boolean deleteReply(long rno) {
		log.info("deleteReply..." + rno);
		return mapper.deleteReply(rno) == 1;
	}

	@Override
	public boolean updateReply(ReplyVO vo) {
		log.info("updateReply..." + vo);
		return mapper.updateReply(vo) == 1;
	}

	@Override
	public ReplyVO getReply(long rno) {
		log.info("getReply..." + rno);
		return mapper.getReply(rno);
	}
	
}
