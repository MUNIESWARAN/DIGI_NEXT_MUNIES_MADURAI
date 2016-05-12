package com.musichub.furniture.dao;

import java.util.List;

import com.musichub.furniture.model.Register;

public interface IRegister {
	public void addRegisteration(Register register);
	public List<Register> getRegisteration();
}
