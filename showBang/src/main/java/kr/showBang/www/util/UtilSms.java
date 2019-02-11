package kr.showBang.www.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class UtilSms {
	private final static String apiUrl = "https://sslsms.cafe24.com/sms_sender.php";
	private final static String userAgent = "Mozilla/5.0";
	private final static String charset = "UTF-8";
	private final static boolean isTest = true;
	
    
    /**==============================================================
      Description        :  사용 함수 선언
    ==============================================================**/
     /**
     * nullcheck
     * @param str, Defaultvalue
     * @return
     */

     public static String nullcheck(String str,  String Defaultvalue ) throws Exception
     {
          String ReturnDefault = "" ;
          if (str == null)
          {
              ReturnDefault =  Defaultvalue ;
          }
          else if (str == "" )
         {
              ReturnDefault =  Defaultvalue ;
          }
          else
          {
              ReturnDefault = str ;
          }
           return ReturnDefault ;
     }
     /**
     * BASE64 Encoder
     * @param str
     * @return
     */
    public static String base64Encode(String str)  throws java.io.IOException {
        sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
        byte[] strByte = str.getBytes();
        String result = encoder.encode(strByte);
        return result ;
    }

    /**
     * BASE64 Decoder
     * @param str
     * @return
     */
    public static String base64Decode(String str)  throws java.io.IOException {
        sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
        byte[] strByte = decoder.decodeBuffer(str);
        String result = new String(strByte);
        return result ;
    }
    
    /**==============================================================
      Description        : 캐릭터셋 정의
      EUC-KR: @ page contentType="text/html;charset=EUC-KR
      UTF-8: @ page contentType="text/html;charset=UTF-8
    ==============================================================**/
   
    /**==============================================================
      Description        :  사용자 샘플코드
    ==============================================================**/
    public String sendSMSAsync(String subject, String msg, String receivePhone){
		String firstPhoneNum = receivePhone.substring(0, 3);
		String secondPhoneNum = receivePhone.substring(3, 7);
		String lastPhoneNum= receivePhone.substring(7,11);
		String rphone = firstPhoneNum + "-" + secondPhoneNum + "-" + lastPhoneNum;
		String check="";
		
		try{
			URL obj = new URL(apiUrl);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			con.setRequestProperty("Accept-Charset", charset);
			con.setRequestMethod("POST");
			con.setRequestProperty("User-Agent", userAgent);
			
			String postParams = 
					"user_id="+base64Encode("acubesms") //호스팅id
					+"&passwd="+base64Encode("6fa262a62f4278b97d57b700c1d54a01") //보안키
					+"&msg="+base64Encode(msg) // 메세지
					+"&rphone="+base64Encode(rphone) //수신번호
					+"&sphone1="+base64Encode("063") //발신번호
					+"&sphone2="+base64Encode("229") 
					+"&sphone3="+base64Encode("3435")
					+"&mode="+base64Encode("1") 
					+"&smsType="+base64Encode("L")
					+"&subject="+base64Encode(subject); // SMS/LMS여부
			
			// For POST only - START
			con.setDoOutput(true);
			OutputStream os = con.getOutputStream();
			os.write(postParams.getBytes());
			os.flush();
			os.close();
			// For POST only - END
			
			int responseCode = con.getResponseCode();
			//System.out.println("POST Response Code : "+responseCode);

			if(responseCode == HttpURLConnection.HTTP_OK){ //성공
				BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String inputLine;
				StringBuffer buf = new StringBuffer();
				
				while((inputLine = in.readLine()) != null){
					buf.append(inputLine);
				}
				in.close();
				
				System.out.println("SMS Content : "+buf.toString());
				check = "succ";
			}else{
				System.out.println("fail!!");
				check = "fail";
			}
			
		}catch(IOException ex){
			System.out.println("error : "+ex.getMessage());
		}
		return check;
	}
}
