package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.OrdersDTO;
import alcohol.mvc.util.DbUtil;

public class OrderDAOImpl implements OrderDAO{

	@Override
	public int orderInsert(List<OrdersDTO> list) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		String sql = "";
		try {
			
		} finally {
			// TODO: handle finally clause
		}
		
		
		return 0;
	}

	@Override
	public int orderUpdate(OrdersDTO ordersDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		String sql = "UPDATE ORDERS SET ORDER_STATUS=? WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, ordersDTO.getOrderStatus());
			ps.setInt(2, ordersDTO.getOrderCode());
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(ps, con);
		}
				
		return result;
	}

	@Override
	public String orderStatus(int oCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "SELECT ORDER_STATUS FROM ORDERS WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, oCode);
			
			
			
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
				
		return null;
	}

	@Override
	public int deliUpdate(OrdersDTO ordersDTO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String deliStatus(String oCode) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
