package ru.spbima.manjet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.spbima.manjet.domain.Role;
import ru.spbima.manjet.domain.User;
import ru.spbima.manjet.repos.UserRepo;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registrationPage() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDB = userRepo.findByUsername(user.getUsername());

        if (userFromDB != null) {
            model.put("message", "User with this login already exist!");
            return "registration";
        }

        user.setIsActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "registration_complete";

        //return "redirect:/login";
    }
}
