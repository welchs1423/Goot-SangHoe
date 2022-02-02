package org.choonsik.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Criteria {
	private int pageNum;
	private int amount;
	private long pcategory, porigin;
}
