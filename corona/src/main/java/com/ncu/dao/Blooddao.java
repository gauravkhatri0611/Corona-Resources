package com.ncu.dao;

import java.util.List;

import com.ncu.model.firstmodel;

public interface Blooddao {
  public List<firstmodel> listalldonation();
  
  public void add(firstmodel user);
  public void update(firstmodel user);
  public void delete(String phn);
  public firstmodel find(String phn);


  
}
