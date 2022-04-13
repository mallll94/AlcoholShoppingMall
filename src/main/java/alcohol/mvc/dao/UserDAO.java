package alcohol.mvc.dao;

import java.sql.SQLException;

import alcohol.mvc.dto.UserDTO;

public interface UserDAO {

	/**
	 * �α��� üũ select u_id , u_pwd, u_name from users where u_id=? and u_pwd=?
	 * */
	public UserDTO loginCheck(UserDTO userDto)throws SQLException;
	
	/**
	 * ȸ������(���) INSERT INTO USERS (U_ID, U_PWD,U_NAME,U_JUMIN,U_PHONE,U_EMAIL,U_ADDR
	 * U_ADDR2,U_GRADE,U_POINT,JOIN_DATE) VALUES(?,?,?,?,?,?,?,?,0,0,SYSDATE)
	 * */
	public int insert(UserDTO userDto)throws SQLException;
	
	/**
	 * ���̵� �ߺ����� üũ SELECT U_ID FROM USERS WHERE U_ID=?
	 * */
	public boolean idCheck(String id)throws SQLException;
	
	/**
	 * ������������ UPDATE USERS SET U_PWD =? , U_PHONE =? ,U_ADDR=?,U_ADDR2=? WHERE U_ID=?
	 * */
	public int update(UserDTO userDto)throws SQLException;
	
	
	/**
	 * ȸ�� Ż�� DELETE FROM USERS WHERE U_ID=?\
	 * */
	public int delete(String id)throws SQLException;
}
