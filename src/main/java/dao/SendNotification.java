/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;




public class SendNotification {
    private String id =System.getenv("ONESIGNAL_ID");
    private String key =System.getenv("ONESIGNAL_KEY");


    public void send() throws Exception {

        try {
            String jsonResponse;

            URL url = new URL("https://onesignal.com/api/v1/notifications");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setUseCaches(false);
            con.setDoOutput(true);
            con.setDoInput(true);

            con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            con.setRequestProperty("Authorization", "Basic "+key);
            con.setRequestMethod("POST");

            

            String strJsonBody = "{"
                    + "\"app_id\": \""+id+"\","
                 //   + "\"included_segments\": [\"All\"],"
                    + "\"included_segments\": [\"Active Users\"],"
                  //  +   "\"filters\": [{\"field\": \"tag\", \"key\": \""+valor+"\", \"relation\": \"=\", \"value\": \"1100\"}],"
                    + "\"data\": {\"foo\": \"bar\"},"
                    
                    //+ "\"contents\": {\"en\": \"¡Tienes nuevos pedidos!\"}"
                    + "\"template_id\": \"b3d24645-7bc4-4e77-bc16-779d5396e7e7\""//plantilla realizada en el dashboard de onesignal
                    
                    + "}";

            System.out.println("strJsonBody:\n" + strJsonBody);

            byte[] sendBytes = strJsonBody.getBytes("UTF-8");
            con.setFixedLengthStreamingMode(sendBytes.length);

            OutputStream outputStream = con.getOutputStream();
            outputStream.write(sendBytes);

            int httpResponse = con.getResponseCode();
            System.out.println("httpResponse: " + httpResponse);

            if (httpResponse >= HttpURLConnection.HTTP_OK
                    && httpResponse < HttpURLConnection.HTTP_BAD_REQUEST) {
                Scanner scanner = new Scanner(con.getInputStream(), "UTF-8");
                jsonResponse = scanner.useDelimiter("\\A").hasNext() ? scanner.next() : "";
                scanner.close();
            } else {
                Scanner scanner = new Scanner(con.getErrorStream(), "UTF-8");
                jsonResponse = scanner.useDelimiter("\\A").hasNext() ? scanner.next() : "";
                scanner.close();
            }
            System.out.println("jsonResponse:\n" + jsonResponse);

        } catch (Throwable t) {
            t.printStackTrace();
        }

    }

}