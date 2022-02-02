package org.choonsik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {
	private long bno, rno, mno;
	private String rtext, mname;
	private Date replyDate, updateDate;
}
