package org.choonsik.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.choonsik.domain.MemberVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

public class CustomUser extends User{

@Getter
private static final long serialVersionUID = 1L;
	
	private MemberVO member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(MemberVO vo) {
		super(vo.getMid(), vo.getMpw(), vo.getAuthList().stream().
				map(auth -> new SimpleGrantedAuthority(auth.getAuth())).
				collect(Collectors.toList()));
		
		this.member = vo;
	}

	public MemberVO getMember() {
		return member;
	}

	
	

	

}
