public class EmailManager {

    public void sendemail(String address, string subject, string body)
    {
        Messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};

        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setplaintextbody(body);
        
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });

        //messaging.SendEmailResult[] results = messaging.sendEmail(mail);
      
    }
}