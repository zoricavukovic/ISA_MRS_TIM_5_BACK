package com.example.BookingAppTeam05.springSecurity.config;

import com.example.BookingAppTeam05.service.users.CustomUserDetailsService;


import com.example.BookingAppTeam05.springSecurity.auth.RestAuthenticationEntryPoint;
import com.example.BookingAppTeam05.springSecurity.auth.TokenAuthenticationFilter;
import com.example.BookingAppTeam05.springSecurity.util.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Autowired
    private RestAuthenticationEntryPoint restAuthenticationEntryPoint;

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder);
    }

    protected void configure(HttpSecurity http) throws Exception {
        http
                // komunikacija izmedju klijenta i servera je stateless posto je u pitanju REST aplikacija
                // ovo znaci da server ne pamti nikakvo stanje, tokeni se ne cuvaju na serveru
                // ovo nije slucaj kao sa sesijama koje se cuvaju na serverskoj strani - STATEFULL aplikacija
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()

                // sve neautentifikovane zahteve obradi uniformno i posalji 401 gresku
                .exceptionHandling().authenticationEntryPoint(restAuthenticationEntryPoint).and()

                // svim korisnicima dopusti da pristupe sledecim putanjama:
                .authorizeRequests().antMatchers("/auth/**").permitAll()		// /auth/**
                .antMatchers("/h2-console/**").permitAll()	// /h2-console/** ako se koristi H2 baza)
                .antMatchers("/api/foo").permitAll()
                .antMatchers("/cottages/**").permitAll()
                .antMatchers("/pricelists/**").permitAll()
                .antMatchers("/places/**").permitAll()
                .antMatchers("/adventures/**").permitAll()
                .antMatchers("/users/**").permitAll()
                .antMatchers("/ships/**").permitAll()
                .antMatchers("/pictures/**").permitAll()
                .antMatchers("/reservations/**").permitAll()
                .antMatchers("/additionalServices/**").permitAll()
                .antMatchers("/reports/**").permitAll()
                .antMatchers("/bookingEntities/**").permitAll()
                .antMatchers("/calendar/**").permitAll()
                .antMatchers("/admins/**").permitAll()
                .antMatchers("/unavailableDates/**").permitAll()
                .antMatchers("/ratings/**").permitAll()
                .antMatchers("/complaints/**").permitAll()
                .antMatchers("/deleteAccounts/**").permitAll()
                .antMatchers("/loyaltyPrograms/**").permitAll()
                .antMatchers("/systemRevenuePercentages/**").permitAll()

                // ukoliko ne zelimo da koristimo @PreAuthorize anotacije nad metodama kontrolera, moze se iskoristiti hasRole() metoda da se ogranici
                // koji tip korisnika moze da pristupi odgovarajucoj ruti. Npr. ukoliko zelimo da definisemo da ruti 'admin' moze da pristupi
                // samo korisnik koji ima rolu 'ADMIN', navodimo na sledeci nacin:
                // .antMatchers("/admin").hasRole("ADMIN") ili .antMatchers("/admin").hasAuthority("ROLE_ADMIN")

                // za svaki drugi zahtev korisnik mora biti autentifikovan
                .anyRequest().authenticated().and()

                // za development svrhe ukljuci konfiguraciju za CORS iz WebConfig klase
                .cors().and()

                // umetni custom filter TokenAuthenticationFilter kako bi se vrsila provera JWT tokena umesto cistih korisnickog imena i lozinke (koje radi BasicAuthenticationFilter)
                .addFilterBefore(new TokenAuthenticationFilter(tokenUtils, customUserDetailsService), BasicAuthenticationFilter.class);

        // zbog jednostavnosti primera ne koristimo Anti-CSRF token (https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html)
        http.csrf().disable();
    }

    @Autowired
    private TokenUtils tokenUtils;


    // Definisanje konfiguracije koja utice na generalnu bezbednost aplikacije
    @Override
    public void configure(WebSecurity web) throws Exception {
        // Autentifikacija ce biti ignorisana ispod navedenih putanja (kako bismo ubrzali pristup resursima)
        // Zahtevi koji se mecuju za web.ignoring().antMatchers() nemaju pristup SecurityContext-u

        // Dozvoljena POST metoda na ruti /auth/login, za svaki drugi tip HTTP metode greska je 401 Unauthorized
        web.ignoring().antMatchers(HttpMethod.POST, "/auth/login");
        // Ovim smo dozvolili pristup statickim resursima aplikacije
        web.ignoring().antMatchers(HttpMethod.GET,  "/","/webjars/**", "/*.html", "favicon.ico", "/**/*.html",
                "/**/*.css", "/**/*.js");
    }



}
