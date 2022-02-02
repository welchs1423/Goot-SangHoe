package org.choonsik.security;

import org.choonsik.domain.MemberVO;
import org.choonsik.mapper.MemberMapper;
import org.choonsik.security.domain.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
public class CustomUserDetailService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		log.warn("load user by userName : " + username);
		
		MemberVO vo = mapper.read(username);
		
		log.warn("memberVO : " + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}
	
}
