package com.ncu.dao;

import java.util.List;



import com.ncu.model.Resources;
import com.ncu.model.firstmodel;
import com.ncu.model.formmodel;

public interface UserDao {
	
	    
	    public void deleteresource(String address);
	    public void deleteresource2(String address);
	    public void insertfromresource1(String address);
	    
	    public void insertresource(Resources resource);
	    public Resources findad(String address);
	  
	     
	    public List<Resources> list();
	    public List<Resources> list2();
	    
//	    public List<formmodel> list3(String state);
//	    public List<formmodel> list4(String state);
	    public List<formmodel> list5(String state,String resource);
		public void update(Resources user);

		
}
