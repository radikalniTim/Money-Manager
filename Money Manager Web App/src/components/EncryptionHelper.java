package components;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptionHelper {
	public EncryptionHelper(){
		
	}
	
	public String encrtypString(String string){
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			byte[] encryptedBytes = md.digest(string.getBytes());
			StringBuilder encryptedPassword = new StringBuilder();
	        for(int i=0; i< encryptedBytes.length ;i++){
	        	encryptedPassword.append(Integer.toString((encryptedBytes[i] & 0xff) + 0x100, 16).substring(1));
	        }
	        return encryptedPassword.toString();
		} catch (NoSuchAlgorithmException e) {
			System.out.print("Error on encryptPassword:" + e.getMessage());
			e.printStackTrace();
		}
		return string;
	}
}
