package com.samssak.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class MainPage {

    @RequestMapping("/test")
    public String index() throws IOException {

        return "view/main";
    }

}



