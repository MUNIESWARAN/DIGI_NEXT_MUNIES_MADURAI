package com.musichub.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.furniture.dao.IRegister;
import com.musichub.furniture.model.Register;

@Service("registerService")
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class RegisterService implements IRegisterService{

	@Autowired
	private IRegister iregisterdao;
	
	 

	@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
	public void addRegistration(Register registerBean) {
		 iregisterdao.addRegisteration(registerBean);
	}

	public List<Register> getRegisteration() {
		// TODO Auto-generated method stub
		return iregisterdao.getRegisteration();
	}
	
	
}
