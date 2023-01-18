package com.nooy.home.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlaceDto {
	
	private String bid;//아이디
	private String bregion;//지역
	private String baddress;//주소
	private String bprice;//대여료
	private String brule;//규칙
	private String bemail;
	private int bnum;
	
}
