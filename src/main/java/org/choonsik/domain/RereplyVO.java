package org.choonsik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RereplyVO {
	private long bno, rno, rrno;
	private String reply, replyer;
	private Date replyDate, updateDate;
}
