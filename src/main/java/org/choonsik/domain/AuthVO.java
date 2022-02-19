package org.choonsik.domain;

import org.choonsik.domain.AuthVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthVO {
	private String username, authority;
}
