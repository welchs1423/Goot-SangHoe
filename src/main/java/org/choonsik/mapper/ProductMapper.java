package org.choonsik.mapper;

import java.util.List;

import org.choonsik.domain.CategoryVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.ProductVO;


public interface ProductMapper {

//	list 맵퍼 시작
	public List<ProductVO> getListwhiskey();
	public List<ProductVO> getListwine();
	public List<ProductVO> getListbeer();
	public List<ProductVO> getListliquor();
	public List<ProductVO> getListbrandy();
//	list 맵퍼 끝
//	public List<ProductVO> getCategorylist(Criteria cri);
//	public int getTotalCount();
	public List<ProductVO> getCategorywhiskey(Criteria cri);
	public List<ProductVO> getCategorywine(Criteria cri);
	public int getTotal(long pcategory);
	public ProductVO read(long pno);
	public List<ProductVO> getcateorglist(Criteria cri);
	public int getTotalcateorg(Criteria cri);
	public CategoryVO checkCategory(long pcategory);
	public List<ProductVO> getbrandyList(Criteria cri);
	public List<ProductVO> getliquorList(Criteria cri);
	public List<ProductVO> getvodkaList(Criteria cri);
	
	
}
