package alcohol.mvc.dao;

import java.sql.SQLException;

public interface PaymentDAO {
	/**
	 * �����ϱ� select * from payment where pay_type=?
	 * */
	public int selectPay(int paytype)throws SQLException;
}
