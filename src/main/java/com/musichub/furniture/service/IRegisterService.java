package com.musichub.furniture.service;

import java.util.List;

import com.musichub.furniture.model.Register;

public interface IRegisterService {

		public void addRegistration(Register registerBean);
		public List<Register> getRegisteration();
}
