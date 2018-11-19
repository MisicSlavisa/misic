package com.slavisa.misic.web;

import com.slavisa.misic.AuthorizedUser;
import com.slavisa.misic.model.Emaildb;
import com.slavisa.misic.service.EmailService;
import com.slavisa.misic.to.EmailDB;
import com.slavisa.misic.to.UserTo;
import com.slavisa.misic.util.UserUtil;
import com.slavisa.misic.web.user.AbstractUserController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;

import javax.validation.Valid;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
public class RootController extends AbstractUserController {

    @Autowired
    public EmailService emailService;

    public Emaildb save(EmailDB e){
        log.info("save email: {}", e.getSender());
        return emailService.save(e);
    }

    public List<Emaildb> getAllEmails(){
        log.info("getAllEmails");
        return emailService.getAll();
    }

    @GetMapping("/")
    public String root() {
        return "redirect:index";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/experience")
    public String experience() {
        return "experience";
    }

    @GetMapping("/contact")
    public String contact(ModelMap model) {
        EmailDB em = new EmailDB(null, null, null, null);
        model.addAttribute("emailDB", em);
        return "contact";
    }

    @GetMapping("/email")
    public String email(ModelMap model) {
        EmailDB em = new EmailDB(null, null, null, null);
        model.addAttribute("emailDB", em);
        return "contact";
    }

    @PostMapping(value = "/email")
    public String email(@Valid @ModelAttribute("emailDB") EmailDB emailDB, BindingResult bindingResult, SessionStatus status,
                        Model model, Locale locale) {
        Map<String, Object> model1 = new HashMap<>();

        if (bindingResult.hasErrors()) {
            return "contact";
        }
        try {
            status.setComplete();
            save(emailDB);
        } catch (DataIntegrityViolationException ex) {
            model.addAttribute("result", "false");
            return "contact";
        }

        log.info("EmailController is called!");
        model.addAttribute("sender", emailDB.getSender());
        model.addAttribute("subject", emailDB.getSubject());
        //model.addAttribute("to", "grslavisa@gmail.com");
        //model.addAttribute("ccList", new ArrayList<>());
        //model.addAttribute("bccList", new ArrayList<>());
        //model.addAttribute("userName", "javastudyUser");
        model.addAttribute("message", emailDB.getMessage());
        model1.putIfAbsent("subject", "Message from " + emailDB.getSubject() + "!");
        model1.putIfAbsent("message", emailDB.getMessage());
        if (emailService.sendEmail("registered.vm", model1, locale)){
            model.addAttribute("result", "true");
        }
        else {
            model.addAttribute("result", "false");
        }

        //use redirect or you will send email after every refresh page.
        return "redirect:contact";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/emails")
    public String emails() {
        return "emails";
    }

    @GetMapping("/education")
    public String education() {
        return "education";
    }

    @GetMapping("/portfolio")
    public String portfolio() {
        return "portfolio-main";
    }

    //    @Secured("ROLE_ADMIN")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/users")
    public String users() {
        return "users";
    }

    @GetMapping(value = "/login")
    public String login() {
        return "login";
    }

    @GetMapping("/profile")
    public String profile(ModelMap model, @AuthenticationPrincipal AuthorizedUser authorizedUser) {
        model.addAttribute("userTo", authorizedUser.getUserTo());
        return "profile";
    }

    @PostMapping("/profile")
    public String updateProfile(@Valid UserTo userTo, BindingResult result, SessionStatus status, @AuthenticationPrincipal AuthorizedUser authorizedUser) {
        if (result.hasErrors()) {
            return "profile";
        }
        try {
            super.update(userTo, authorizedUser.getId());
            authorizedUser.update(userTo);
            status.setComplete();
            return "redirect:index";
        } catch (DataIntegrityViolationException ex) {
            result.rejectValue("email", ExceptionInfoHandler.EXCEPTION_DUPLICATE_EMAIL);
            return "profile";
        }
    }

    @GetMapping("/register")
    public String register(ModelMap model) {
        model.addAttribute("userTo", new UserTo());
        model.addAttribute("register", true);
        return "profile";
    }

    @PostMapping("/register")
    public String saveRegister(@Valid UserTo userTo, BindingResult result, SessionStatus status, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("register", true);
            return "profile";
        }
        try {
            super.create(UserUtil.createNewFromTo(userTo));
            status.setComplete();
            return "redirect:login?message=app.registered&username=" + userTo.getEmail();
        } catch (DataIntegrityViolationException ex) {
            result.rejectValue("email", ExceptionInfoHandler.EXCEPTION_DUPLICATE_EMAIL);
            model.addAttribute("register", true);
            return "profile";
        }
    }
}
