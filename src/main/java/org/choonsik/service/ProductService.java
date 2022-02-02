package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.CategoryVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.ProductVO;

public interface ProductService {
//	list 서비스 시작
	public List<ProductVO> getListwhiskey();
	public List<ProductVO> getListwine();
	public List<ProductVO> getListbeer();
	public List<ProductVO> getListbrandy();
	public List<ProductVO> getListliquor();
//	list 서비스 끝
//	public int getTotal();
//	public List<ProductVO> getCategorylist(Criteria cri);
	/* public List<ProductVO> getCategorywhiskey(Criteria cri); */
	public List<ProductVO> getCategorywine(Criteria cri);
	public int getTotal(long pcategory);
	public ProductVO get(long pno);
	public List<ProductVO> getcateorglist(Criteria cri);
	public int getTotalcateorg(Criteria cri);
	public CategoryVO checkCategory(long pcategory);
	public List<ProductVO> getbrandyList(Criteria cri);
	public List<ProductVO> getliquorList(Criteria cri);
	public List<ProductVO> getvodkaList(Criteria cri);

}
