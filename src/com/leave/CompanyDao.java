package com.leave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CompanyDao {
	public boolean saveEmployee(Company com) {
		boolean result=false;
		try {
			Connection cn=DatabaseUtil.getConnection();
			PreparedStatement ps=cn.prepareStatement("insert into Company Values(?,?,?,?,?);");
			ps.setString(1,com.getId());
			ps.setString(2, com.getName());
			ps.setString(3, com.getRole());
			ps.setString(4, com.getPassword());
			ps.setString(5, com.getManager_id());
			int t=ps.executeUpdate();
			if(t>0) {
				result=true;
				System.out.println("true");
			}
			else
			{
				System.out.println("false");
			}
			DatabaseUtil.closeConnection(cn);
		} catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	public String checkPassword(String id)
	{
		String hashPass=null;
	try{
	Connection con=DatabaseUtil.getConnection();
	PreparedStatement ps=con.prepareStatement("select Id,Password from company where id=?");
	ps.setString(1, id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{   id=rs.getString(1);
		hashPass=rs.getString(2);
	}
	}
	catch(SQLException e) {
		System.out.println(e.getMessage());
	}
	return hashPass;
		
	}
	public boolean addLeaveRequest(LeaveRequest lq) {
		boolean result=false;
		try {
			Connection cn=DatabaseUtil.getConnection();
			PreparedStatement ps=cn.prepareStatement("insert into LeaveRequest(Emp_id,Emp_name,Leave_date,Reason,Leave_Status,Status_msg) VALUES(?,?,?,?,?,?)");
			ps.setString(1,lq.getEmp_id());
			ps.setString(2, lq.getEmp_name());
			ps.setString(3, lq.getLeave_date());
			ps.setString(4, lq.getReason());
			ps.setString(5, lq.getLeave_Status());
			ps.setString(6, lq.getStatus_msg());
			int t=ps.executeUpdate();
			if(t>0) {
				result=true;
			}
			DatabaseUtil.closeConnection(cn);
		} catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	public LeaveRequest leaveStatus(String id )
	{   LeaveRequest lq1=null;
		try{
			Connection con=DatabaseUtil.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from LeaveRequest where Emp_id=?");
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {   
				lq1=new LeaveRequest(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
			 }
			}
			catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		return lq1;
	}
	public ArrayList<LeaveRequest> listEmployee()
	{   ArrayList<LeaveRequest> al=new ArrayList<LeaveRequest>();
		try{
		Connection con=DatabaseUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from LeaveRequest");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{   
			LeaveRequest lq=new LeaveRequest(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
            al.add(lq);
		}
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return al;
	}
	
	public boolean alterTable(String id,String status, String msg)
	{ boolean flag=false;
		try{
			Connection con=DatabaseUtil.getConnection();
			PreparedStatement ps=con.prepareStatement("update LeaveRequest SET Leave_Status=?, Status_msg=? where Emp_id=?");
		    ps.setString(1,status );
		    ps.setString(2,msg );
		    ps.setString(3,id );
		    int t= ps.executeUpdate();
		    if(t>0)
		    {
		    	flag=true;
		    }
			}
			catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		return flag;
	}
	
}
