package com.live.hrms.pages;

import io.cucumber.java.Scenario;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class SelectHotel extends Page{
    WebDriver driver;
    Scenario scenario;
    public SelectHotel(WebDriver driver, Scenario scenario){
        super(driver, scenario);
        this.scenario = scenario;
        this.driver = driver;
        PageFactory.initElements(this.driver, this);
    }
    @FindBy(how = How.XPATH, using = ("//*[@id='location_0']"))
    WebElement location;
    @FindBy(how = How.XPATH, using = ("//input[@name ='arr_date_0']"))
    WebElement checkin;
    public String getTextFromLocation(){

        return location.getText();
    }
    public String getTextFromCheckInDate(){

        return checkin.getText();
    }


}
