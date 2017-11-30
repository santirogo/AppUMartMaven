package dao;


import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EnviarMail {

    private String cod;
    
    private static final String SMTP_HOST_NAME = "smtp.sendgrid.net";

    private static final String SMTP_AUTH_USER = System.getenv("SENDGRID_USERNAME");

    private static final String SMTP_AUTH_PWD  = System.getenv("SENDGRID_PASSWORD");

    public EnviarMail() {
        this.cod = Integer.toString((int) Math.floor(Math.random() * (1000000 - 100000 + 1) + (100000)));
        
    }

    public static void sendMail(String toEmail,String cod) throws Exception {
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", SMTP_HOST_NAME);
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");

        Authenticator auth = new SMTPAuthenticator();
        System.out.println("aauuutth"+auth.toString());
        Session mailSession = Session.getInstance(props, auth);
        System.out.println("mail sessioooooon: "+mailSession.getProperty("mail.smtp.auth"));

        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);

        Multipart multipart = new MimeMultipart("alternative");

        BodyPart bodyPart = new MimeBodyPart();
//        bodyPart.setContent("Tu código:"+cod, "text/html");
        bodyPart.setContent("<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "<title>CSS Template</title>\n"
                + "<meta charset=\"utf-8\">\n"
                + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                + "<style>\n"
                + "* {\n"
                + "    box-sizing: border-box;\n"
                + "}\n"
                + "\n"
                + "body {\n"
                + "  margin: 0;\n"
                + "}\n"
                + "\n"
                + "/* Style the top navigation bar */\n"
                + ".topnav {\n"
                + "    overflow: hidden;\n"
                + "    background-color: #808080;\n"
                + "}\n"
                + "\n"
                + "\n"
                + "/* Change color on hover */\n"
                + ".topnav a:hover {\n"
                + "    background-color: #ddd;\n"
                + "    color: black;\n"
                + "}\n"
                + "\n"
                + "/* Style the content */\n"
                + ".content {\n"
                + "    background-color: #f1f1f1;\n"
                + "    padding: 10px;\n"
                + "    height: 200px; /* Should be removed. Only for demonstration */\n"
                + "}\n"
                + "\n"
                + "/* Style the footer */\n"
                + ".footer {\n"
                + "    background-color: #808080;\n"
                + "    padding: 10px;\n"
                + "}\n"
                + "</style>\n"
                + "</head>\n"
                + "<body>\n"
                + ">\n"
                + "<div class=\"topnav\">\n"
                + "  <img src=\"https://raw.githubusercontent.com/diesazul96/AppUAlfa/David/AppUAlfa/web/Pictures/AppuMartTextoBorde.png\" WIDTH=200 HEIGHT=180>\n"
                + "</div>\n"
                + "\n"
                + "<div class=\"content\">\n"
                + "  <p>!Bienvenido a AppuMart!</p>\n"
                + "  <p>Ayúdanos a hacer más segura tu cuenta usando el siguiente código para confirmar tu dirección de correo: </p><br>\n"
                + "<p>Tu código: "+cod+"</p>\n"
                + "</div>\n"
                + "\n"
                + "<div class=\"footer\">\n"
                + "  <center>Este email ha sido enviado a "+toEmail+" </center><br>\n"
                + "<center>©2017 AppuMart    Todos los derechos reservados</center>\n"
                + "</div>\n"
                + "\n"
                + "</body>\n"
                + "</html>", "text/html");
        multipart.addBodyPart(bodyPart);

        message.setContent(multipart);

        message.setFrom(new InternetAddress("appumartsw@gmail.com"));
        message.setSubject("Confirmación de correo");

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

 

        transport.connect(SMTP_AUTH_USER,SMTP_AUTH_PWD);

        transport.sendMessage(message,

        message.getRecipients(Message.RecipientType.TO));

        transport.close();
    }
    private static class SMTPAuthenticator extends javax.mail.Authenticator {

        public PasswordAuthentication getPasswordAuthentication() {

            String username = SMTP_AUTH_USER;

            String password = SMTP_AUTH_PWD;

            return new PasswordAuthentication(username, password);

        }

    }

    public String getCod() {

        return cod;
    }
    
    
    
    public static void sendMailCheckout(String toEmail,String map) throws Exception {
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", SMTP_HOST_NAME);
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");

        Authenticator auth = new SMTPAuthenticator();
        System.out.println("aauuutth"+auth.toString());
        Session mailSession = Session.getInstance(props, auth);
        System.out.println("mail sessioooooon: "+mailSession.getProperty("mail.smtp.auth"));

        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);

        Multipart multipart = new MimeMultipart("alternative");

        BodyPart bodyPart = new MimeBodyPart();
        bodyPart.setContent(map, "text/html");
        multipart.addBodyPart(bodyPart);

        message.setContent(multipart);

        //message.setFrom(new InternetAddress("appumartsw@gmail.com"));
        message.setFrom(new InternetAddress("appumartsw@gmail.com"));
        message.setSubject("¡¡Tienes un nuevo pepido!!");

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

        transport.connect(SMTP_AUTH_USER,SMTP_AUTH_PWD);

        transport.sendMessage(message,

        message.getRecipients(Message.RecipientType.TO));

        transport.close();
    }
    
}

