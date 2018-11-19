package com.slavisa.misic.web.email;

import com.slavisa.misic.model.Emaildb;
import com.slavisa.misic.service.EmailService;
import com.slavisa.misic.to.EmailDB;
import com.slavisa.misic.web.ExceptionInfoHandler;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.slf4j.Logger;

import java.util.*;

public abstract class AbstractEmailController {
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    public EmailService emailService;

    public Emaildb save(EmailDB e){
        log.info("save email: {}", e.getSender());
        return emailService.save(e);
    }

    public List<Emaildb> getAll(){
        log.info("getAll");
        return emailService.getAll();
    }

    public void delete(int id) {
        log.info("delete {}", id);
        ExceptionInfoHandler.checkModificationAllowed(id);
        emailService.delete(id);
    }
}
