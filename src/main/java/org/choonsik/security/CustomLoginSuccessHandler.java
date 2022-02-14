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
			Authentication auth) throws IOException, ServletException {
		
		log.warn("Login Success!!");
		
		List<String> roleNames = new ArrayList<String>();
		
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		
		
		/*
		 * for(GrantedAuthority auth : authentication.getAuthorities()) {
		 * roleName.add(auth.getAuthority()); }
		 */
		
		log.warn( "ROLE NAME : " + roleNames);
		
		if(roleNames.contains("ROLE_ADMIN")) {
			
			/*
			 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
			 * response.getWriter();
			 * 
			 * out.println("<script language='javascript'>");
			 * out.println("alert('관리자님 환영합니다.'); location.href='/list';");
			 * out.println("</script>");
			 * 
			 * out.flush();
			 */
			response.sendRedirect("/sample/admin");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			/*
			 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
			 * response.getWriter();
			 * 
			 * out.println("<script language='javascript'>");
			 * out.println("alert('님 환영합니다.'); location.href='/list';");
			 * out.println("</script>");
			 * 
			 * out.flush();
			 */
			response.sendRedirect("/sample/member");
			return;
		}
		
		response.sendRedirect("/");
	}
	
}
