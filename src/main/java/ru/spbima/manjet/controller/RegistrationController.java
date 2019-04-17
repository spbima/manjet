package ru.spbima.manjet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.spbima.manjet.domain.Role;
import ru.spbima.manjet.domain.User;
import ru.spbima.manjet.repos.UserRepo;

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
        if(user.getUsername().equals("") || user.getPassword().equals("")) {
            model.put("message", "Username and password mustn't be empty!");
            model.put("user_name", user.getUsername());
            model.put("user_password", user.getPassword());

            return "registration";
        }

        User userFromDB = userRepo.findByUsername(user.getUsername());

        if (userFromDB != null) {
            model.put("message", "User with this login already exists!");
            model.put("user_name", user.getUsername());
            model.put("user_password", user.getPassword());
            return "registration";
        }

        user.setIsActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "registrationComplete";

        // TODO: mark fields if error

        // TODO: display error in "sign in" form
    }
}
