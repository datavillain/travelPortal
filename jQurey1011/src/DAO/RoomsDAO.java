package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DTO.ProductDTO;
import DTO.RoomsDTO;
import common.DbManager;

public class RoomsDAO {
 Connection conn =null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 List<RoomsDTO> bestList = new ArrayList<RoomsDTO>();
 List<RoomsDTO> productRoomList = new ArrayList<RoomsDTO>();
 
 public List<RoomsDTO> BestListRooms(){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM best_rooms";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			bestList.clear();
			while(rs.next()){
				String r_id = rs.getString("r_id");
				String r_name = rs.getString("r_name");
				String r_kinds = rs.getString("r_kinds");
				String r_details = rs.getString("r_details");
				String r_location = rs.getString("r_location");
				String r_url = rs.getString("r_url");
				String r_addr = rs.getString("r_addr");
				String r_img = rs.getString("r_img");
				String r_phone = rs.getString("r_phone");
				
				RoomsDTO rDto = new RoomsDTO(r_id, r_name, r_kinds, r_details, r_location, r_url, r_addr, r_img, r_phone);
				
				bestList.add(rDto);
			}
			
			for(RoomsDTO rDto : bestList) {
					System.out.print(rDto.getR_id() + " ");
					System.out.print(rDto.getR_name() + " ");
					System.out.print(rDto.getR_kinds() + " ");
					System.out.print(rDto.getR_details() + " ");
					System.out.print(rDto.getR_location() + " ");
					System.out.print(rDto.getR_url() + " ");
					System.out.print(rDto.getR_addr() + " ");
					System.out.print(rDto.getR_img() + " ");
					System.out.print(rDto.getR_phone() + " ");
					System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(conn, pstmt, rs);
		}
		return bestList;
	}
 	
 
 
 public List<RoomsDTO> listRooms(){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM product_rooms";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			productRoomList.clear();
			while(rs.next()){
				String r_id = rs.getString("r_id");
				String r_name = rs.getString("r_name");
				String r_kinds = rs.getString("r_kinds");
				String r_details = rs.getString("r_details");
				String r_location = rs.getString("r_location");
				String r_url = rs.getString("r_url");
				String r_addr = rs.getString("r_addr");
				String r_img = rs.getString("r_img");
				String r_phone = rs.getString("r_phone");
				
				RoomsDTO rDto = new RoomsDTO(r_id, r_name, r_kinds, r_details, r_location, r_url, r_addr, r_img, r_phone);
				
				productRoomList.add(rDto);
			}
			
			for(RoomsDTO rDto : productRoomList) {
					System.out.print(rDto.getR_id() + " ");
					System.out.print(rDto.getR_name() + " ");
					System.out.print(rDto.getR_kinds() + " ");
					System.out.print(rDto.getR_details() + " ");
					System.out.print(rDto.getR_location() + " ");
					System.out.print(rDto.getR_url() + " ");
					System.out.print(rDto.getR_addr() + " ");
					System.out.print(rDto.getR_img() + " ");
					System.out.print(rDto.getR_phone() + " ");
					System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(conn, pstmt, rs);
		}
		return productRoomList;
	}
 
 
 
}
