package org.choonsik.service;

import java.util.List;

import org.choonsik.domain.CartVO;
import org.choonsik.domain.MemberVO;
import org.choonsik.domain.ProductVO;
import org.choonsik.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Service
public class MemberServiceImpl implements MemberService{
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Transactional
	@Override
	public int registerForm(MemberVO member) {
		log.info("memberRegister..." + member);
		
		int result = mapper.registerForm(member);
		
		return result;
	}

	@Override
	public ProductVO purchase(long pno) {
		log.info("purchase..." + pno);
		return mapper.purchase(pno);
	}

	@Transactional
	@Override
	public int cartInsert(CartVO cart) {
		log.info("cartInsert..." + cart);
		
		int result = mapper.cartInsert(cart);
		
		return result;
	}

	@Override
	public List<CartVO> getCartList(long mno) {
		log.info("getCartList..." + mno);
		return mapper.getCartList(mno);
	}

	@Override
	public int getTotal(long mno) {
		log.info("getTotal..." + mno);
		return mapper.getTotal(mno);
	}

	
	@Override 
	public boolean cartRemove(long cno) {
		log.info("cartRemove..." +cno); 
	return mapper.cartRemove(cno) == 1; 
	}
	 

}
