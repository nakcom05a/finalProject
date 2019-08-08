package common.wrapper;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncryptWrapper extends HttpServletRequestWrapper {

	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String key) {
		String value = "";

		// request 객체에 담긴 파라미터 key 값이 (______) 일때 암호화 : 비밀번호
		if (key != null && key.equals("pw") || key.equals("")) {
			value = getSha512(super.getParameter(key));
		} else {
			value = super.getParameter(key);
		}

		return value;

	}

	public static String getSha512(String userPwd) {
		String encPwd = null;

		// SHA-512방식의 암호화 객체
		MessageDigest md = null;

		try {
			md = MessageDigest.getInstance("SHA-512");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		byte[] bytes = userPwd.getBytes(Charset.forName("UTF-8"));

		md.update(bytes);
		encPwd = Base64.getEncoder().encodeToString(md.digest());
		// java.util.Base64 인코더를 통해 암호화된 바이트 배열을 인코딩해서 문자열로 출력

		return encPwd;
	}

}
