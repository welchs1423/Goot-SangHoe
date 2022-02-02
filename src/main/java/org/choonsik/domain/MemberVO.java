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
	private String mid, mpw, mname, mphone, memail, mauth;
	private List<AuthVO> authList;
}
