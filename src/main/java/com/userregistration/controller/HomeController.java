package com.userregistration.controller;

/**
 * Created by Travis Brindley on 7/21/2017.
 */
import com.userregistration.factory.UserFactory;
import com.userregistration.models.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String helloWorld(Model model) {
        ArrayList<Users> userlist = UserFactory.getUsers();
        model.addAttribute("userlist",userlist);
        return "index";
    }
    @RequestMapping("/newuser")
    public String newuser(){
        return "adduser";
    }

    @RequestMapping("/addUser")
    public String addUser(@RequestParam("firstname") String firstName, @RequestParam("lastname") String lastName, @RequestParam("address1") String address1,
                          @RequestParam("address2") String address2, @RequestParam("city") String city, @RequestParam("state") String state,
                          @RequestParam("zip") String zip, Model model){
        model.addAttribute("firstname", firstName);
        model.addAttribute("lastname", lastName);
        model.addAttribute("address1", address1);
        model.addAttribute("address2", address2);
        model.addAttribute("city",city);
        model.addAttribute("state",state);
        model.addAttribute("zip",zip);

        UserFactory.addUser(firstName,lastName,address1,address2,city,state,zip);
        return "confirmation";
    }
}