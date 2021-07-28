package Homeworl_27_TMS.service;

import Homeworl_27_TMS.entity.Operation;

import Homeworl_27_TMS.storage.OperationStorage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class CalcService {

	private final OperationStorage operationStorage = new OperationStorage();

	public Operation calc(double a, double b, String operation, Date date, Date time) {
		switch (operation) {
			case "+":
				Operation operation1 = new Operation(a, b, operation, a + b, date, time);
				operationStorage.save(operation1);
				return operation1;
			case "-":
				Operation operation2 = new Operation(a, b, operation, a - b, date,time);
				operationStorage.save(operation2);
				return operation2;
			case "*":
				Operation operation3 = new Operation(a, b, operation, a * b, date,time);
				operationStorage.save(operation3);
				return operation3;
			case "/":
				Operation operation4 = new Operation(a, b, operation, a /b, date,time);
				operationStorage.save(operation4);
				return operation4;
		}
		return null;
	}

	public List<Operation> findAll(){
		return operationStorage.getAll();
	}

}
