package member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

public class MemberDAO {
	private Properties prop = new Properties();

	public MemberDAO() {
		String fileName = MemberDAO.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Member login(Connection conn, String id, String pw) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;

		String query = prop.getProperty("login");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "id");
			pstmt.setString(2, "pw");

			rset = pstmt.executeQuery();
			if (rset.next()) {
				member = new Member();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

}
