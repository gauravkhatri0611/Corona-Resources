package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ncu.model.firstmodel;



class bloodRowMapper implements RowMapper<firstmodel> {


	public firstmodel mapRow(ResultSet rs, int rowNum) throws SQLException {
		firstmodel first = new firstmodel();
		first.setName(rs.getString(1));
        first.setPhn(rs.getString(2));
        first.setBlood(rs.getString(3));
        return first;
	}
	
}
@Repository
public final class BloodDaoImp implements Blooddao{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public BloodDaoImp(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }


	@Override
	public List<firstmodel> listalldonation() {
		// TODO Auto-generated method stub
		String sql = "select * from blood";

        List<firstmodel> first  = jdbcTemplate.query(sql, new ResultSetExtractor<List<firstmodel>>(){

//			public List<> extractData(ResultSet rs) throws SQLException, DataAccessException {
//				 List<firstmodel> list = new ArrayList<firstmodel>();
//	                while (rs.next())
//	                {
//	                	firstmodel firstl = new firstmodel();
//	                	firstl.setName(rs.getString(1));
//	                	firstl.setPhn(rs.getString(2));
//	                	firstl.setBlood(rs.getString(3));
//	                	
//		                
//	                    list.add(firstl);
//	                }
//	                return list;
//			}

			@Override
			public List<firstmodel> extractData(ResultSet rs) throws SQLException, DataAccessException {
				// TODO Auto-generated method stub
				List<firstmodel> list = new ArrayList<firstmodel>();
                while (rs.next())
                {
                	firstmodel firstl = new firstmodel();
                	firstl.setName(rs.getString(1));
                	firstl.setPhn(rs.getString(2));
                	firstl.setBlood(rs.getString(3));
                	
	                
                    list.add(firstl);
                }
                return list;
		}
			
        });
			
        
        return first;
		
	}
	


	@Override
	public void add(firstmodel user) {
		// TODO Auto-generated method stub
		String sql = "insert into blood  values (?,?,?)";

	    jdbcTemplate.update(sql, new Object[]
	    {user.getName(), user.getPhn(), user.getBlood()});
		
	}


	@Override
	public void update(firstmodel user) {
		String sql = "update blood set name =?, bloodgrp=? where phn=?";
		 jdbcTemplate.update(sql, new Object[]
				    {user.getName(), user.getBlood(), user.getPhn()});
					
		
	}
	


	@Override
	public void delete(String phn) {
		// TODO Auto-generated method stub
		String sql = "delete from blood where phn=?";
        jdbcTemplate.update(sql, new Object[]
        { phn });
	}


	@Override
	public firstmodel find(String phn) {
		// TODO Auto-generated method stub
		 String sql = "select * from blood where phn=?";
		 firstmodel first = (firstmodel) jdbcTemplate.queryForObject(sql, new Object[]
			        { phn }, new bloodRowMapper());
			return first;
	}

	
}















