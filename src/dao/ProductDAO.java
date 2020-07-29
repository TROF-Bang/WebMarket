package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Product;
import mvc.DBConnection;

public class ProductDAO {
	
	private static ProductDAO instance = new ProductDAO();
	private ArrayList<Product> products = new ArrayList<Product>();
	private Product product;
	private Connection conn = DBConnection.getConnection();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public static ProductDAO getInstance(){
		return instance;
	}
	
	// ���̵� ���� ��ǰ ��ȸ
	public Product getProduct(String p_id) {
		
		product = new Product();
		
		sql = "select * from product where p_id = ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product.setProductId(rs.getString("p_id"));
				product.setPname(rs.getString("p_name"));
				product.setUnitPrice(Integer.parseInt(rs.getString("p_unitPrice")));
				product.setDescription(rs.getString("p_description"));
				product.setCategory(rs.getString("p_category"));
				product.setManufacturer(rs.getString("p_manufacturer"));
				product.setUnitsInStock(Long.parseLong(rs.getString("p_unitsInStock")));
				product.setCondition(rs.getString("p_condition"));
				product.setFilename(rs.getString("p_fileName"));
			}
		} catch (Exception ex) {
			System.out.println("getProduct() ���� : " + ex);
		} finally {
			try {				
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}		
		}
		return product;
	}
	
	// ��� ��ǰ ��������
	public ArrayList<Product> getAllProducts() {
		
		sql = "select * from product";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				// product�� �ν��Ͻ� ���� �ʰ� ArrayList�� �����ҽ� ���� �ּҿ� �����͸� ���� �ϰ� �ȴ�. ����!!
				product = new Product();
//				String id = rs.getString("p_id");
//				System.out.println(id);
				product.setProductId(rs.getString("p_id"));
				product.setPname(rs.getString("p_name"));
				product.setUnitPrice(Integer.parseInt(rs.getString("p_unitPrice")));
				product.setDescription(rs.getString("p_description"));
				product.setCategory(rs.getString("p_category"));
				product.setManufacturer(rs.getString("p_manufacturer"));
				product.setUnitsInStock(Long.parseLong(rs.getString("p_unitsInStock")));
				product.setCondition(rs.getString("p_condition"));
				product.setFilename(rs.getString("p_fileName"));
				products.add(product);
			}
		} catch (Exception e) {
			System.out.println("getAllProducts() ���� : " + e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new RuntimeException(e2.getMessage());
			}
		} 
		return products;
	}
	
	public void addProduct(Product product) {
		sql = "insert into product values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("addProduct");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getProductId());
			pstmt.setString(2, product.getPname());
			pstmt.setInt(3, product.getUnitPrice());
			pstmt.setString(4, product.getDescription());
			pstmt.setString(5, product.getCategory());
			pstmt.setString(6, product.getManufacturer());
			pstmt.setLong(7, product.getUnitsInStock());
			pstmt.setString(8, product.getCondition());
			pstmt.setString(9, product.getFilename());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("addProduct() ���� : " + e);
		} finally {
			try {				
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}		
		}
	}
}
