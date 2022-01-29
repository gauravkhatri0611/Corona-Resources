package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

import com.ncu.model.Resources;
import com.ncu.model.firstmodel;
import com.ncu.model.formmodel;



class userRowMapper implements RowMapper<Resources> {
	
	public Resources mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
	    Resources user = new Resources();
	    user.setName(rs.getString(1));
	    user.setPno(rs.getString(2));
	     user.setEmail(rs.getString(3));
	     user.setState(rs.getString(4));
	     user.setResource(rs.getString(5));
         user.setAddress(rs.getString(6));
       
         user.setQuantity(rs.getInt(7));
        
		return   user;
		
		
	}
	
}
	

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public UserDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
	

	public User get(String email) {
		String sql = "SELECT * FROM dept where dnumber =1 ";
	    return jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(User.class));
		
	}

	@Override
	public List<Resources> list() {
		
		String sql = "select * from resource1";
        
        List<Resources> resourcelist = jdbcTemplate.query(sql, new ResultSetExtractor<List<Resources>>(){

			public List<Resources> extractData(ResultSet rs) throws SQLException, DataAccessException {
				 List<Resources> list = new ArrayList<Resources>();
	                while (rs.next())
	                {
	                    Resources resources = new Resources();
	                    resources.setName(rs.getString(1));
	                    resources.setPno(rs.getString(2));
	                    resources.setEmail(rs.getString(3));
	                    resources.setState(rs.getString(4));
	                    resources.setResource(rs.getString(5));
	                    resources.setAddress(rs.getString(6));
		                resources.setQuantity(rs.getInt(7));
		                
	                    list.add(resources);
	                }
	                return list;
			}});
		return resourcelist;
	}
    @Override
	public void insertresource(Resources resource) {
		// TODO Auto-generated method stub
		String sql = "insert into resource1 (name,pno,email,state,resource,address,quantity) values(?,?,?,?,?,?,?)";
		System.out.println(resource.getName());
		jdbcTemplate.update(sql, new Object[]
				{resource.getName(),resource.getPno(),resource.getEmail(),resource.getState(),resource.getResource(),resource.getAddress(),resource.getQuantity()});
		
		
	}

	@Override
	public void deleteresource(String address) {
		// TODO Auto-generated method stub
		String sql = " delete from resource1 where address = ? ";
		jdbcTemplate.update(sql, new Object[] {address});
	}
	public void deleteresource2(String address) {
		// TODO Auto-generated method stub
		String sql = " delete from resource2 where address = ? ";
		jdbcTemplate.update(sql, new Object[] {address});
	}
	@Override
    public void insertfromresource1(String address) {
		// TODO Auto-generated method stub
    	String sql = "insert into resource2 select * from resource1 where address=?";
    	jdbcTemplate.update(sql, new Object[] {address});
	}

	
	@Override
	public List<Resources> list2() {
		// TODO Auto-generated method stub
		String sql = "select * from resource2 ";

        List<Resources> resourcelist = jdbcTemplate.query(sql, new ResultSetExtractor<List<Resources>>(){

			public List<Resources> extractData(ResultSet rs) throws SQLException, DataAccessException {
				 List<Resources> list = new ArrayList<Resources>();
	                while (rs.next())
	                {
	                    Resources resources = new Resources();
	                    resources.setName(rs.getString(1));
	                    resources.setPno(rs.getString(2));
	                    resources.setEmail(rs.getString(3));
	                    resources.setState(rs.getString(4));
	                    resources.setResource(rs.getString(5));
	                    resources.setAddress(rs.getString(6));
		                resources.setQuantity(rs.getInt(7));
		                
	                    list.add(resources);
	                }
	                return list;
			}});
		return resourcelist;
	}
	
	
//	public List<formmodel> list3(String state) {
//		// TODO Auto-generated method stub
//		String sql = "select * from resource2 where resource = 'oxygen'";
//
//        List<Resources> resourcelist = jdbcTemplate.query(sql, new ResultSetExtractor<List<Resources>>(){
//
//			public List<Resources> extractData(ResultSet rs) throws SQLException, DataAccessException {
//				 List<Resources> list = new ArrayList<Resources>();
//	                while (rs.next())
//	                {
//	                    Resources resources = new Resources();
//	                    resources.setName(rs.getString(1));
//	                    resources.setPno(rs.getString(2));
//	                    resources.setEmail(rs.getString(3));
//	                    resources.setState(rs.getString(4));
//	                    resources.setResource(rs.getString(5));
//	                    resources.setAddress(rs.getString(6));
//		                resources.setQuantity(rs.getInt(7));
//		                
//	                    list.add(resources);
//	                }
//	                return list;
//			}});
//		return resourcelist;
//	}
//	
//	public List<formmodel> list4(String state) {
//		// TODO Auto-generated method stub
//		String sql = "select * from resource2 where resource = 'Medicine'";
//
//        List<Resources> resourcelist = jdbcTemplate.query(sql, new ResultSetExtractor<List<Resources>>(){
//
//			public List<Resources> extractData(ResultSet rs) throws SQLException, DataAccessException {
//				 List<Resources> list = new ArrayList<Resources>();
//	                while (rs.next())
//	                {
//	                    Resources resources = new Resources();
//	                    resources.setName(rs.getString(1));
//	                    resources.setPno(rs.getString(2));
//	                    resources.setEmail(rs.getString(3));
//	                    resources.setState(rs.getString(4));
//	                    resources.setResource(rs.getString(5));
//	                    resources.setAddress(rs.getString(6));
//		                resources.setQuantity(rs.getInt(7));
//		                
//	                    list.add(resources);
//	                }
//	                return list;
//			}});
//		return resourcelist;
//	}
	
	public List<formmodel> list5(String state,String resource) {
		// TODO Auto-generated method stub
		String sql = "select * from resource2 where resource = '"+ resource +"' and state= '"+ state + "'";

        List<formmodel> resourceli = jdbcTemplate.query(sql, new ResultSetExtractor<List<formmodel>>(){

			public List<formmodel> extractData(ResultSet rs) throws SQLException, DataAccessException {
				 List<formmodel> list = new ArrayList<formmodel>();
	                while (rs.next())
	                {
	                    formmodel resources = new formmodel();
	                    resources.setName(rs.getString(1));
	                    resources.setPno(rs.getString(2));
	                    resources.setEmail(rs.getString(3));
	                    resources.setState(rs.getString(4));
	                    resources.setResource(rs.getString(5));
	                    resources.setAddress(rs.getString(6));
		                resources.setQuantity(rs.getInt(7));
		                
	                    list.add(resources);
	                }
	                return list;
			}});
		return resourceli;
	}


	@Override
	public Resources findad(String address) {
		 String sql = "select * from resource2 where address=?";
		 Resources first = (Resources) jdbcTemplate.queryForObject(sql, new Object[]
			        { address }, new userRowMapper());
			return first;
	}


	@Override
	public void update(Resources user) {
		String sql = "update resource2 set name =?, pno=? ,email =?,state =?,resource =?,quantity =? where address =?";
		 jdbcTemplate.update(sql, new Object[]
				    {user.getName(), user.getPno(), user.getEmail(), user.getState(), user.getResource(), user.getQuantity(),user.getAddress()});
					
	}
	
//	public List<formmodel> list3(String state) {
//		// TODO Auto-generated method stub
//		String sql = "select * from resource2 where resource = 'Oxygen' and state= '"+ state + "'";
//
//        List<formmodel> resourceli = jdbcTemplate.query(sql, new ResultSetExtractor<List<formmodel>>(){
//
//			public List<formmodel> extractData(ResultSet rs) throws SQLException, DataAccessException {
//				 List<formmodel> list = new ArrayList<formmodel>();
//	                while (rs.next())
//	                {
//	                    formmodel resources = new formmodel();
//	                    resources.setName(rs.getString(1));
//	                    resources.setPno(rs.getString(2));
//	                    resources.setEmail(rs.getString(3));
//	                    resources.setState(rs.getString(4));
//	                    resources.setResource(rs.getString(5));
//	                    resources.setAddress(rs.getString(6));
//		                resources.setQuantity(rs.getInt(7));
//		                
//	                    list.add(resources);
//	                }
//	                return list;
//			}});
//		return resourceli;
//	}
//	
//	
//	
//	public List<formmodel> list4(String state) {
//		// TODO Auto-generated method stub
//		String sql = "select * from resource2 where resource = 'Medicine' and state= '"+ state + "'";
//
//        List<formmodel> resourceli = jdbcTemplate.query(sql, new ResultSetExtractor<List<formmodel>>(){
//
//			public List<formmodel> extractData(ResultSet rs) throws SQLException, DataAccessException {
//				 List<formmodel> list = new ArrayList<formmodel>();
//	                while (rs.next())
//	                {
//	                    formmodel resources = new formmodel();
//	                    resources.setName(rs.getString(1));
//	                    resources.setPno(rs.getString(2));
//	                    resources.setEmail(rs.getString(3));
//	                    resources.setState(rs.getString(4));
//	                    resources.setResource(rs.getString(5));
//	                    resources.setAddress(rs.getString(6));
//		                resources.setQuantity(rs.getInt(7));
//		                
//	                    list.add(resources);
//	                }
//	                return list;
//			}});
//		return resourceli;
//	}
//}
//
}
