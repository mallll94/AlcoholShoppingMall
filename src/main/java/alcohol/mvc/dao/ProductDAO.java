package alcohol.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.CategoryDTO;
import alcohol.mvc.dto.ProductDTO;

public interface ProductDAO {
	/**
	 * ��ǰ ��� INSERT INTO PRODUCT(P_CODE,CATE_CODE,P_NAME,P_ALCOHOL,P_PRICE,P_STUCK,P_DATE,P_IMAGE,P_DETAIL) VALUES(?,?,?,?,?,?,SYSDATE,?,?)
	 * */
	public int insert(ProductDTO productDTO)throws SQLException;
	
	
	/**
	 * ��ǰ ���� UPDATE PRODUCT SET P_PRICE =? WHERE P_CODE=?
	 * */
	public int updatePrice(ProductDTO productDTO)throws SQLException;
	
	/**
	 * ��� ���� UPDATE PRODUCT SET P_STUCK =? WHERE P_CODE=?
	 * */
	public int updateStuck(ProductDTO productDTO)throws SQLException;
	
	/**
	 * ��ǰ ���� DELETE FROM PRODUCT WHERE P_CODE=?
	 * */
	public int delete(String pCode)throws SQLException;
	
	/**
	 * ��ǰ ��ü �˻� SELECT * FROM PRODUCT  �ڿ� ������ ���߿� ���ϱ���� 
	 * ���ǰ˻�(�˻��ʵ�� �˻��ܾ ���޹޾� �˻��ʵ忡 �˻��ܾ������ ���ڵ带 �˻��ϱ� )
	 *   SELECT * FROM PRODUCT orderby �α��(�Ǹŷ�) ?
         SELECT * FROM PRODUCT  �ֽż�?
         SELECT * FROM PRODUCT  ����Ʈ��? 
         �̷�����
	 * 
	 * */
	public  List<ProductDTO> selectAll()throws SQLException;
	

	
	/**
	 * ��ǰ �� �˻� SELECT * FROM PRODUCT WHERE P_CODE=?
	 * */
	public ProductDTO searchBy(String pCode)throws SQLException;
	
	/**
	 * ī�װ� �˻� SELECT * FROM CATEGORY
	 * */
	public List<CategoryDTO> selectCategory()throws SQLException;
	
}
