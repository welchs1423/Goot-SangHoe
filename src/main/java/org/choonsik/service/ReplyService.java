package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.Criteria;
import org.choonsik.domain.ReplyVO;

public interface ReplyService {
	public List<ReplyVO> getList(long bno, Criteria cri);

	public int create(ReplyVO vo);

	public boolean deleteReply(long rno);

	public boolean updateReply(ReplyVO vo);

	public ReplyVO getReply(long rno);
	
}
