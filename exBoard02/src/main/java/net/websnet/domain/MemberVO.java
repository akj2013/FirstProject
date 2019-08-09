package net.websnet.domain;

import lombok.Data;

@Data
public class MemberVO {
	private int idx;
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private String regtime;
}
