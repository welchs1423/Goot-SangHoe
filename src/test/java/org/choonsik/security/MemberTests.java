package org.choonsik.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberTests {
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	@Test
	public void testInsertMember() {
		
		String sql = "insert into users(mno, username, password, mname, mphone, memail)"
				+ "values(?,?,?,?,?,?)";
		
		for(int i=0; i < 100; i++) {
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(3, pwencoder.encode("pw" + i));
				pstmt.setInt(1, i + 1);
				pstmt.setInt(5, 010+i);
				pstmt.setString(6, i+"@naver.com");
				
				if(i<90) {
					pstmt.setString(2, "user" + i);
					pstmt.setString(4, "일반사용자" + i);
				}else {
					pstmt.setString(2, "admin" + i);
					pstmt.setString(4, "관리자"+i);
				}
				
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(pstmt != null) {try {pstmt.close();}catch(Exception e) {}}
				if(con != null) {try {con.close();}catch(Exception e) {}}
			}
			
		}
	}
}
