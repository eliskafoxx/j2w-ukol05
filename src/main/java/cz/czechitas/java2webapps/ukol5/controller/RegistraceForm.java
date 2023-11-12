package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDate;
import java.time.Period;

public class RegistraceForm {
    @NotBlank (message = "Vyplňte, prosím, toto pole.")
    private String jmeno;
    @NotBlank (message = "Vyplňte, prosím, toto pole.")
    private String prijmeni;

    @Past
    @NotNull (message = "Vyplňte, prosím, toto pole.")
    private LocalDate birthDate;
    @NotBlank (message = "Vyplňte, prosím, toto pole.")
    private String pohlavi;
    @NotBlank (message = "Vyplňte, prosím, toto pole.")
    private String turnus;
    @Email
    private String email;

    private String telefon;

    @Min(value = 9, message = "Minimální věk je 9 let.")
    @Max(value = 15, message = "Maximální věk je 15 let.")
    private int vek;

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public int getVek(){ return vek; }

    public void setVek(int vek){
        Period period = birthDate.until(LocalDate.now());
        this.vek = period.getYears();
    }
}