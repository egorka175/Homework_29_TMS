package Homeworl_27_TMS.storage;

import Homeworl_27_TMS.entity.Operation;


import java.util.ArrayList;
import java.util.List;

public class OperationStorage {
	private static List<Operation> operationList = new ArrayList<>();

	public void save(Operation o){
		operationList.add(o);
	}

	public List<Operation> getAll(){
		return new ArrayList<>(operationList);
	}
}
