package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DTO.MemberDTO;
import DTO.ProductDTO;
import common.DbManager;

public class ProductDAO {
	Connection conn =null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<ProductDTO> list = new ArrayList<ProductDTO>();
	List<ProductDTO> listFam = new ArrayList<ProductDTO>();
	List<ProductDTO> listPack = new ArrayList<ProductDTO>();
	List<ProductDTO> listProduct = new ArrayList<ProductDTO>();
	
	public List<ProductDTO> listNewProduct(){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM new_pro_view";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			list.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				String p_festa = rs.getString("p_festa");

				
				
				ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img, p_festa);
				list.add(productDto);
			}
			
			for(ProductDTO productDto : list) {
					System.out.print(productDto.getP_code() + " ");
					System.out.print(productDto.getP_name() + " ");
					System.out.print(productDto.getP_price2() + " ");
					System.out.print(productDto.getP_img() + " ");
					System.out.println(productDto.getP_festa() + " ");
					System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public List<ProductDTO> listFamilyProduct(){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM family_pro_view";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			listFam.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				String p_festa = rs.getString("p_festa");
				
				ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img, p_festa);
				listFam.add(productDto);
			}
			
			for(ProductDTO productDto : listFam) {
					System.out.print(productDto.getP_code() + " ");
					System.out.print(productDto.getP_name() + " ");
					System.out.print(productDto.getP_price2() + " ");
					System.out.print(productDto.getP_img() + " ");
					System.out.println(productDto.getP_festa() + " ");
					System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(conn, pstmt, rs);
		}
		return listFam;
	}
	
	public List<ProductDTO> listPackProduct(){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM pack_pro_view";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			listPack.clear();
			
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				String p_festa = rs.getString("p_festa");
				
				ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img, p_festa);
				listPack.add(productDto);
			}
			
			for(ProductDTO productDto : listPack) {
					System.out.print(productDto.getP_code() + " ");
					System.out.print(productDto.getP_name() + " ");
					System.out.print(productDto.getP_price2() + " ");
					System.out.print(productDto.getP_img() + " ");
					System.out.println(productDto.getP_festa() + " ");
					System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(conn, pstmt, rs);
		}
		return listPack;
	}
	
	public List<ProductDTO> searchProduct(String name){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM new_pro_view WHERE p_name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			listProduct.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				String p_img = rs.getString("p_img");
				String p_img2 = rs.getString("p_img2");
				String p_img3 = rs.getString("p_img3");
				String p_img4 = rs.getString("p_img4");
				String p_img5 = rs.getString("p_img5");
				String p_location = rs.getString("p_location");
				String p_url = rs.getString("p_url");
				String p_festa = rs.getString("p_festa");
				
				
				ProductDTO pDto = new ProductDTO(p_code, p_name, p_img, p_festa, p_img2, p_img3, p_img4, p_img5, p_url, p_location);
				listProduct.add(pDto);
			}
			for(ProductDTO pDto : listProduct) {
					System.out.print(pDto.getP_code() + " ");
					System.out.print(pDto.getP_name() + " ");
					System.out.print(pDto.getP_img() + " ");
					System.out.print(pDto.getP_img2() + " ");
					System.out.print(pDto.getP_img3() + " ");
					System.out.print(pDto.getP_img4() + " ");
					System.out.print(pDto.getP_img5() + " ");
					System.out.print(pDto.getP_location() + " ");
					System.out.print(pDto.getP_url() + " ");
					System.out.print(pDto.getP_festa() + " ");
					System.out.println();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		return listProduct;
	}
	
	public  ProductDTO moveProduct(String name){
		ProductDTO pDto = new ProductDTO();
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM new_pro_view WHERE p_name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			listProduct.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				String p_img = rs.getString("p_img");
				String p_img2 = rs.getString("p_img2");
				String p_img3 = rs.getString("p_img3");
				String p_img4 = rs.getString("p_img4");
				String p_img5 = rs.getString("p_img5");
				String p_location = rs.getString("p_location");
				String p_url = rs.getString("p_url");
				String p_festa = rs.getString("p_festa");
				
				pDto = new ProductDTO(p_code, p_name, p_img, p_festa, p_img2, p_img3, p_img4, p_img5, p_url, p_location);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		return pDto;
	}
}
