package alcohol.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.CartDTO;

public interface CartDAO {
	/**
	 * ��ٱ��� ��� INSERT INTO CART VALUES(cart_no_seq.nextval,?,?,?)
	 * */
	public int cartInsert(CartDTO dto)throws SQLException;
	
	/**
	 * ���� ���� UPDATE CART SET CART_COUNT =? WHERE CART_NUMBER=?
	 * */
	public int cartUpdate(CartDTO dto)throws SQLException;
	
	/**
	 * ���� DELETE FROM CART WHERE CART_NUMBER=?
	 * */
	public int cartDelete(int cartNo)throws SQLException;
	
	/**
	 * ��ٱ��� �ֹ� (�̰� ���񽺿��� �ϴ°��� order���� �ϴ°��� �𸣰ڴ�)
	 * */
	
	
	/**
	 * ��ٱ��� ������ ��ü�˻� SELECT * FROM CART
	 * */
	public List<CartDTO> selectAll()throws SQLException;
	
}
