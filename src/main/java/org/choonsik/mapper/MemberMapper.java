package org.choonsik.mapper;

import java.util.List;

import org.choonsik.domain.CartVO;
import org.choonsik.domain.MemberVO;
import org.choonsik.domain.ProductVO;

public interface MemberMapper {

	public int registerForm(MemberVO member);

	public ProductVO purchase(long pno);
	
	public MemberVO read(String mid);

	public int cartInsert(CartVO cart);

	public List<CartVO> getCartList(long mno);

	public int getTotal(long mno);

	public int cartRemove(long cno);
	
	
}
