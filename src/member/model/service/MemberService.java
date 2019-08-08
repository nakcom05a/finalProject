package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {

	public Member login(String id, String pw) {
		Connection conn = getConnection();
		Member member = new MemberDAO().login(conn, id, pw);
		close(conn);
		return member;
	}
	
}
