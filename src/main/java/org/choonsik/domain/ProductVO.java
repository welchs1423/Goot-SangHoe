package org.choonsik.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductVO {
	private long pno,pcategory,porigin,palcohol,pprice,pml,cno;
	private String pname, pdesc, porgname, pcatname;
}
