package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.OrderDAO;
import alcohol.mvc.dao.OrderDAOImpl;
import alcohol.mvc.dto.OrdersDTO;

public class OrderServiceImpl implements OrderService{
	
	private OrderDAO dao = new OrderDAOImpl();

	@Override
	public void orderInsert(List<OrdersDTO> list) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void orderUpdate(OrdersDTO ordersDTO) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String orderStatus(String oCode) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deliUpdate(OrdersDTO ordersDTO) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String deliStatus(String oCode) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
    
}