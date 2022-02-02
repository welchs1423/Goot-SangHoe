package org.choonsik.mapper;

import java.util.List;

import org.choonsik.domain.Criteria;
import org.choonsik.domain.ProductVO;
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
public class ProductMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	
//	@Test
//	public void testGetListwhiskey() {
//		List<ProductVO> list = mapper.getListwhiskey();
//		
//		for(ProductVO vo : list) {
//			log.info(vo);
//		}
//	}
	
//	@Test
//	public void testGetListwine() {
//		List<ProductVO> list = mapper.getListwine();
//		
//		for(ProductVO vo : list) {
//			log.info(vo);
//		}
//	}
	

	
//	@Test
//	public void testPaging() {
//		
//		Criteria cri = new Criteria();
//		cri.setAmount(10);
//		cri.setPageNum(1);
//		
//		List<ProductVO> list = mapper.getCategorywine(cri);
//		
//		for(ProductVO board : list) {
//			log.info(board);
//		}
	

	
}
