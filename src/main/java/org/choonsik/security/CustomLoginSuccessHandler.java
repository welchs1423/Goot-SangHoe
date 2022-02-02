package org.choonsik.security;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		log.warn("Login Success!!");
		
		List<String> roleName = new ArrayList<String>();
		
		
		for(GrantedAuthority auth : authentication.getAuthorities()) {
			roleName.add(auth.getAuthority());
		}
		
		log.warn( "ROLE NAME : " + roleName);
		
		if(roleName.contains("ROLE_ADMIN")) {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script language='javascript'>");
			out.println("alert('관리자님 환영합니다.'); location.href='/list';");
			out.println("</script>");

			out.flush();
			return;
		}
		
		if(roleName.contains("ROLE_MEMBER")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script language='javascript'>");
			out.println("alert('님 환영합니다.'); location.href='/list';");
			out.println("</script>");

			out.flush();
			return;
		}
		
		response.sendRedirect("/");
	}
	
}
