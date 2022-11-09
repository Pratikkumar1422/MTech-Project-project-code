package devops.Rail;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import org.openqa.selenium.firefox.FirefoxOptions;

import devops.Rail.IntegrationTest;

import org.junit.*;
import static org.junit.Assert.*;

import java.io.File;

import org.junit.experimental.categories.Category;

@Category(IntegrationTest.class)
public class LoginFunctionalTest {

	static WebDriver driver;

	@BeforeClass
	public static void setup() {
	//	driver = new ChromeDriver();
		// new FirefoxDriver();
				FirefoxBinary firefoxBinary = new FirefoxBinary();
        firefoxBinary.addCommandLineOptions("--headless");
        System.setProperty("webdriver.gecko.driver", "/usr/bin/geckodriver");
        FirefoxOptions firefoxOptions = new FirefoxOptions();
        firefoxOptions.setBinary(firefoxBinary);
        
        driver = new FirefoxDriver(firefoxOptions);
	}

	@AfterClass
	public static void cleanUp() {
		driver.quit();
	}

	@Test
	public void loginSuccess() {
        driver.get("http://localhost:6080/Rail-tickets");
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("password"));
        WebElement button = driver.findElement(By.xpath("(//*[text()='Login'])[3]"));         
        assertTrue(driver.getPageSource().contains("SuccessPage"));
	}
	
	//@Test
	public void loginFail() {
        driver.get("http://localhost:6080/Rail-tickets");
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("password"));
        WebElement button = driver.findElement(By.xpath("(//*[text()='Login'])[3]"));         
        button.click();
        assertTrue(driver.getPageSource().contains("Invalid username or password, Please try again with valid"));
	}
	
	@Test
	public void registrationSuccess() {
        driver.get("http://localhost:6080/Rail-tickets/register.jsp");
        WebElement firstname = driver.findElement(By.name("fname"));
        WebElement phonenumber = driver.findElement(By.name("phone"));
        //Select gender = new Select(driver.findElement(By.name("gender")));
        WebElement pass = driver.findElement(By.name("password"));
        WebElement confirmpass = driver.findElement(By.name("cpassword"));
        WebElement email = driver.findElement(By.name("email"));
        WebElement button = driver.findElement(By.xpath("(//*[text()='Register'])[2]"));      
        button.click();
        assertTrue(driver.getPageSource().contains("Rail ticket"));
	}
	
	@Test
	public void forgotPasswordSuccess() {
        driver.get("http://localhost:6080/Rail-tickets/forgotpassword.jsp"); 
        WebElement email = driver.findElement(By.name("email"));
        WebElement phone = driver.findElement(By.name("phone"));
        WebElement pass = driver.findElement(By.name("newpassword"));
        WebElement confirmpass = driver.findElement(By.name("confirmpassword"));
        WebElement button = driver.findElement(By.xpath("//*[text()='Update']"));      
        button.click();
        assertTrue(driver.getPageSource().contains("Rail ticket"));
	}
}
