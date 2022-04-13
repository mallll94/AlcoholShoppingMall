package alcohol.mvc.dao;

import java.sql.SQLException;

import alcohol.mvc.dto.OrdersDTO;

public interface OrderDAO {
	/**
	 * �ֹ��ϱ�(���) INSERT INTO ORDERS(ORDER_CODE,U_ID,PAY_CODE) VALUES(orders_no_seq.nextval,?,?,SYSDATE,?,?,?,?,?) ���� �����߾˵�
	 * */
	public int orderInsert(OrdersDTO ordersDTO)throws SQLException;
	
	
	/**
	 * �ֹ� ���¼��� UPDATE ORDERS SET ORDER_STATUS=? WHERE ORDER_CODE=?
	 * */
	public int orderUpdate(OrdersDTO ordersDTO)throws SQLException;
	
	/**
	 * �ֹ� ������� SELECT ORDER_STATUS FROM ORDERS WHERE ORDER_CODE=?
	 * */
	public String orderStatus(String oCode)throws SQLException;
	
	/**
	 * ��� ���� ���� UPDATE ORDERS SET DELI_STATUS=? WHERE ORDER_CODE=?
	 * */
	public int deliUpdate(OrdersDTO ordersDTO)throws SQLException;
	
	/**
	 * ��� ���� ��� SELECT DELI_STATUS FROM ORDERS WHERE ORDER_CODE=?
	 * */
	public String deliStatus(String oCode)throws SQLException;
}
