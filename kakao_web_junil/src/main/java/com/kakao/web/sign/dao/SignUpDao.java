package com.kakao.web.sign.dao;

import com.kakao.web.sign.dto.UserDto;

public interface SignUpDao {
	public int idCheck(String id);
	public int phoneNumberCheck(String phone, String name);
	public boolean signUp(UserDto userDto);
}
