package org.choonsik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeVO {
	private long nno, viewcnt;
	private String title, content;
	private Date regdate, updatedate;
}
