package org.choonsik.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.ReplyVO;

public interface ReplyMapper {
	public List<ReplyVO> replyList(@Param("bno") long bno,
								@Param("cri") Criteria cri);

	public int create(ReplyVO vo);
	public int deleteReply(long rno);

	public int updateReply(ReplyVO vo);

	public ReplyVO getReply(long rno);
	
}
