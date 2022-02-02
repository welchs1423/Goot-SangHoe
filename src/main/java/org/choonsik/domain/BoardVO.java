package org.choonsik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//import org.choonsik.domain.BoardAttachVO;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardVO {
	private long bno;
	private String title, content, writer;
	private Date regdate, updatedate;
	
	private int replycnt, viewcnt;
	
	// 파일 업로드 시 한번에 BoardAttachVO를 처리하도록 list 사용
//	private List<BoardAttachVO> attachList;
}
