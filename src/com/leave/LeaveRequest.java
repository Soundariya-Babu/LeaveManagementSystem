package com.leave;

public class LeaveRequest {
	private String Emp_id;

	private String Emp_name;

	private String Leave_date;

	private String Reason;

	private String Leave_Status;

	private String Status_msg;

	public String getEmp_id() {

		return Emp_id;

	}

	public void setEmp_id(String emp_id) {

		Emp_id = emp_id;

	}

	public String getEmp_name() {

		return Emp_name;

	}

	public void setEmp_name(String emp_name) {

		Emp_name = emp_name;

	}

	public String getLeave_date() {

		return Leave_date;

	}

	public void setLeave_date(String leave_date) {

		Leave_date = leave_date;

	}

	public String getReason() {

		return Reason;

	}

	public void setReason(String reason) {

		Reason = reason;

	}

	public String getLeave_Status() {

		return Leave_Status;

	}

	public void setLeave_Status(String leave_Status) {

		Leave_Status = leave_Status;

	}

	public String getStatus_msg() {

		return Status_msg;

	}

	public void setStatus_msg(String status_msg) {

		Status_msg = status_msg;

	}

	public LeaveRequest(String emp_id, String emp_name, String leave_date, String reason, String leave_Status,

			String status_msg) {

		super();

		Emp_id = emp_id;

		Emp_name = emp_name;

		Leave_date = leave_date;

		Reason = reason;

		Leave_Status = leave_Status;

		Status_msg = status_msg;

	}

}
