package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;


/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("/")
  public ModelAndView index() {
    ModelAndView modelAndView = new ModelAndView("/formular");
    modelAndView.addObject("form", new RegistraceForm());
    return modelAndView;
  }

  @PostMapping("")
  public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {
    Period period = form.getDatumNarozeni().until(LocalDate.now());
    int vek = period.getYears();

    if (bindingResult.hasErrors() || vek < 9 || vek > 14) {
      return "/formular";
    }

    ModelAndView modelAndView = new ModelAndView("/shrnuti");
    modelAndView.addObject("jmeno", form.getJmeno()).
            addObject("prijmeni", form.getPrijmeni()).
            addObject("datumNarozeni", form.getDatumNarozeni()).
            addObject("pohlavi", form.getPohlavi()).
            addObject("turnus", form.getTurnus()).
            addObject("email", form.getEmail()).
            addObject("telefon", form.getTelefon());
    return modelAndView;
  }

}
