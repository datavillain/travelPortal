package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import DTO.MemberDTO;
import common.DbManager;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<MemberDTO> list = new ArrayList<>();
	MemberDTO mDto = new MemberDTO();
	
	public List<MemberDTO> memberSearch(String id){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM mymember WHERE p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			list.clear();
			while(rs.next()){
				String p_id = rs.getString("p_id");
				String p_pw = rs.getString("p_pw");
				String p_name = rs.getString("p_name");
				String p_phone = rs.getString("p_phone");
				String p_email = rs.getString("p_email");
				
				MemberDTO mDto = new MemberDTO(p_id, p_pw, p_name, p_phone, p_email);
				list.add(mDto);
			}
			for(MemberDTO mDto : list) {
					System.out.print(mDto.getP_id() + " ");
					System.out.print(mDto.getP_pw() + " ");
					System.out.print(mDto.getP_name() + " ");
					System.out.print(mDto.getP_phone() + " ");
					System.out.print(mDto.getP_email() + " ");
					System.out.print(mDto.getP_regdate() + " ");
					System.out.println();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public int checkId(String id){
		int result = 0;
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT p_id FROM mymember WHERE p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String p_id = rs.getString("p_id");
				mDto = new MemberDTO(p_id);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		if(mDto.getP_id() != null){
			result = 1;
			return result;
		} else {
			result = 0;
			return result;
		}
	}
	
	
	
	
	public MemberDTO ckLogin(String id, String pw){
		try {
			conn = DbManager.getConnection();
			String sql = "SELECT * FROM mymember WHERE p_id = ? AND p_pw =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			list.clear();
			
				while(rs.next()){
					String p_id = rs.getString("p_id");
					String p_pw = rs.getString("p_pw");
					String p_name = rs.getString("p_name");
					String p_phone = rs.getString("p_phone");
					String p_email = rs.getString("p_email");
					String p_zip = rs.getString("p_zip");
					String p_addr1 = rs.getString("p_addr1");
					String p_addr2 = rs.getString("p_addr2");
					mDto = new MemberDTO(p_id, p_pw, p_name, p_phone, p_email, p_zip, p_addr1, p_addr2);
				}
				
			
			for(MemberDTO mDto : list) {
				System.out.print(mDto.getP_id() + " ");
				System.out.print(mDto.getP_pw() + " ");
				System.out.print(mDto.getP_name() + " ");
				System.out.print(mDto.getP_phone() + " ");
				System.out.print(mDto.getP_email() + " ");
				System.out.print(mDto.getP_zip() + " ");
				System.out.print(mDto.getP_addr1() + " ");
				System.out.print(mDto.getP_addr2() + " ");
				System.out.print(mDto.getP_regdate() + " ");
				System.out.println();
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		if(mDto.getP_id() != null){
			return mDto;
		} else{
			return null;
		}
	}
	
	
	public List<MemberDTO> memberUpdate(MemberDTO memberDto){
		int result = 0;
		try {
			conn = DbManager.getConnection();
			String sql = "UPDATE mymember SET p_pw = ?, p_name = ? , p_phone = ?, p_email =?, p_zip =?, p_addr1 =?, p_addr2 =?  WHERE p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDto.getP_pw());
			pstmt.setString(2, memberDto.getP_name());
			pstmt.setString(3, memberDto.getP_phone());
			pstmt.setString(4, memberDto.getP_email());
			pstmt.setString(5, memberDto.getP_zip());
			pstmt.setString(6, memberDto.getP_addr1());
			pstmt.setString(7, memberDto.getP_addr2());
			pstmt.setString(8, memberDto.getP_id());
			result = pstmt.executeUpdate();
			
			 if (result > 0) {
				  System.out.println("수정되었습니다."); 
			 }  else { 
				  System.out.println("수정 실패하였습니다."); 
			 }
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
	public int memberInsert(MemberDTO memberDto){
		int result = 0;
		try {
			conn = DbManager.getConnection();
			String sql = "INSERT INTO mymember( p_id, p_pw, p_name, p_phone, p_email, p_zip, p_addr1, p_addr2 ) VALUES(?,?,?,?,?,?,?,?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDto.getP_id());
			pstmt.setString(2, memberDto.getP_pw());
			pstmt.setString(3, memberDto.getP_name());
			pstmt.setString(4, memberDto.getP_phone());
			pstmt.setString(5, memberDto.getP_email());
			pstmt.setString(6, memberDto.getP_zip());
			pstmt.setString(7, memberDto.getP_addr1());
			pstmt.setString(8, memberDto.getP_addr2());
			
			
			result = pstmt.executeUpdate();
			
			
			 if (result > 0) {
				  System.out.println("입력되었습니다."); 
			 }  else { 
				  System.out.println("입력 실패하였습니다."); 
			 }
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DbManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	
}
