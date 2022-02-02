package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.CategoryVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.ProductVO;
import org.choonsik.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
//	리스트 서비스 임플 시작
	@Override
	public List<ProductVO> getListwhiskey() {
		log.info("getListwhiskey...");
		return mapper.getListwhiskey();
	}

	@Override
	public List<ProductVO> getListwine() {
		log.info("getListwine...");
		return mapper.getListwine();
	}
	
	@Override
	public List<ProductVO> getListbeer() {
		log.info("getListbeer...");
		return mapper.getListbeer();
	}
	
	@Override
	public List<ProductVO> getListbrandy() {
		log.info("getListliquor...");
		return mapper.getListliquor();
	}

	@Override
	public List<ProductVO> getListliquor() {
		log.info("getListbrandy...");
		return mapper.getListbrandy();
	}
//	리스트 서비스 임플 끝
	/*
	 * @Override public List<ProductVO> getCategorywhiskey(Criteria cri) {
	 * log.info("getCategorylist..."); return mapper.getCategorywhiskey(cri); }
	 */
	
	@Override
	public List<ProductVO> getCategorywine(Criteria cri) {
		log.info("getCategorylist...");
		return mapper.getCategorywine(cri);
	}

	
//	@Override
//	public int getTotalwhiskey() {
//		log.info("getTotal...");
//		return mapper.getTotalwhiskey();
//	}

	@Override
	public ProductVO get(long pno) {
		log.info("get..." + pno);
		return mapper.read(pno);
	}

	@Override
	public List<ProductVO> getcateorglist(Criteria cri) {
		log.info("getcateorglist..." + cri);
		return mapper.getcateorglist(cri);
	}

	@Override
	public int getTotalcateorg(Criteria cri) {
		log.info("getTotalcateorg...");
		return mapper.getTotalcateorg(cri);
	}

	@Override
	public int getTotal(long pcategory) {
		log.info("getTotal..." + pcategory);
		return mapper.getTotal(pcategory);
	}

	
	@Override 
	public CategoryVO checkCategory(long pcategory) {
		log.info("checkCategory..." + pcategory); 
		return mapper.checkCategory(pcategory);
	}

	@Override
	public List<ProductVO> getbrandyList(Criteria cri) {
		log.info("getbrandyList...");
		return mapper.getbrandyList(cri);
	}

	@Override
	public List<ProductVO> getliquorList(Criteria cri) {
		log.info("getliquorList...");
		return mapper.getliquorList(cri);
	}

	@Override
	public List<ProductVO> getvodkaList(Criteria cri) {
		log.info("getvodkaList...");
		return mapper.getvodkaList(cri);
	}

	
	 

}
