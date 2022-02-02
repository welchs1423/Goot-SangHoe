package org.choonsik.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class purchaseInfo {
	private long pno,sum;
	private int amount;
}
