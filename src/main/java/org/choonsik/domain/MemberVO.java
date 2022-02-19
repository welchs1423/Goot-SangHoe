package org.choonsik.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	private long mno;
	private String username, password, mname, mphone, memail;
	private boolean enabled;
	
	private List<AuthVO> authList;
}
