package util;

import java.security.MessageDigest;

public class SHA256 {
	public static String getHash(String str) {
		String result = "";
		
		try {
			MessageDigest ms = MessageDigest.getInstance("SHA-256");
			ms.update(str.getBytes());
			byte byteData[] = ms.digest();
			StringBuffer bf = new StringBuffer();
			for(int i = 0; i < byteData.length; i++) {
				bf.append(Integer.toString((byteData[i] & 0xFF) + 0x100, 16).substring(1));
			}
			
			result = bf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
