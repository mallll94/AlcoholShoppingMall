package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.CouponDAO;
import alcohol.mvc.dao.CouponDAOImpl;
import alcohol.mvc.dto.CouponDTO;

public class CouponServiceImpl implements CouponService {
	private CouponDAO dao = new CouponDAOImpl();
	@Override
	public void couponInsert(CouponDTO dto) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void couponDelete(String cNumber) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CouponDTO> couponAll(String id) throws SQLException {
		List<CouponDTO> list = dao.couponAll(id);
		return list;
	}

}