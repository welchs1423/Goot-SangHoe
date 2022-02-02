package org.choonsik.mapper;

import java.util.List;

import org.choonsik.domain.Criteria;
import org.choonsik.domain.ReplyVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Test
	public void testGetList() {
		Criteria cri = new Criteria();
		
		List<ReplyVO> list =  mapper.replyList(1, cri);
		
		for(ReplyVO vo : list) {
			log.info(vo);
		}
		
	}
}
