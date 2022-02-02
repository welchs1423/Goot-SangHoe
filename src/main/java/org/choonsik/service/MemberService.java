package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.CartVO;
import org.choonsik.domain.MemberVO;
import org.choonsik.domain.ProductVO;

public interface MemberService {

	public int registerForm(MemberVO member);

	public ProductVO purchase(long pno);

	public int cartInsert(CartVO cart);

	public List<CartVO> getCartList(long mno);

	public int getTotal(long mno);

	public boolean cartRemove(long cno); 
}
