package com.slavisa.misic.service;

import com.slavisa.misic.model.Emaildb;
import com.slavisa.misic.repository.EmaildbRepository;
import com.slavisa.misic.to.EmailDB;
import com.slavisa.misic.util.exception.NotFoundException;
import freemarker.template.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Service
public class EmailServiceImpl implements EmailService {

    private final EmaildbRepository repository;

    /*Email From*/
    public static final String FROM = "misic.personal.pages@gmail.com";
    /*Email To*/
    public static final String TO = "grslavisa@gmail.com";
    /*Email Subject*/
    private static final String SUBJECT = "subject";
    /*Email BCC*/
    //private static final String BCC_LIST = "bccList";
    /*Email CCC*/
    //public static final String CCC_LIST = "ccList";

    private JavaMailSender mailSender; //see spring-app.xml

    private Configuration configuration; //see spring-app.xml

    @Autowired
    public EmailServiceImpl(EmaildbRepository repository, JavaMailSender mailSender, Configuration configuration){
        this.repository = repository;
        this.mailSender = mailSender;
        this.configuration = configuration;
    }

    @Override
    public boolean delete(int id) {
        return repository.delete(id);
    }

    @Override
    public List<Emaildb> getBySender(String sender) throws NotFoundException {
        List<Emaildb> em = repository.getBySender(sender);
        if (em.isEmpty()){
            throw new NotFoundException("Sender: " + sender +" not found!");
        }
        return repository.getBySender(sender);
    }

    @Override
    public List<Emaildb> getByRegisteredBetween(Date from, Date to) {
        return repository.getByRegisteredBetween(from, to);
    }

    @Override
    public Emaildb save(Emaildb e) {
        return repository.saveAndFlush(e);
    }

    @Override
    public Emaildb save(EmailDB e) {
        Emaildb emdb = new Emaildb(e.getId(), e.getSubject(),e.getSender(), e.getMessage());
        return repository.saveAndFlush(emdb);
    }

    @Override
    public List<Emaildb> getAll() {
        return repository.getAll();
    }

    public boolean sendEmail (final String templateName, final Map<String, Object> model, Locale local) {
        boolean res = false;
        try {
            MimeMessagePreparator preparator = new MimeMessagePreparator() {

                @Override
                public void prepare(MimeMessage mimeMessage) throws Exception {
                    String subject = (String) model.get(SUBJECT);

                    //List<String> bccList = (List<String>) model.get(BCC_LIST);
                    MimeMessageHelper message = new MimeMessageHelper(mimeMessage, "UTF-8");
                    message.setFrom(FROM);
                    message.setTo(TO);
                    message.setSubject(subject);
                    message.setSentDate(new Date());
                    /*if (bccList != null) {
                        for (String bcc : bccList) {
                            message.addBcc(bcc);
                        }
                    }*/

                    model.put("noArgs", new Object());
                    String text = FreeMarkerTemplateUtils.processTemplateIntoString(configuration.getTemplate(templateName, local,"utf-8"),  model);

                    message.setText(text,true);
                }
            };

            mailSender.send(preparator);
            res = true;

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return res;
    }
}
