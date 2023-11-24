/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hoang
 */
public class Person {

    private int personID;
    private String firstName;
    private String lastName;
    private String loginID;
    private String password;
    private String birthDate;
    private double amount;
    private int isSell;
    private int isAdmin;

    public Person() {
    }

    public Person(int personID, String firstName, String lastName, String loginID, String password, String birthDate, double amount, int isSell, int isAdmin) {
        this.personID = personID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.loginID = loginID;
        this.password = password;
        this.birthDate = birthDate;
        this.amount = amount;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public int getPersonID() {
        return personID;
    }

    public void setPersonID(int personID) {
        this.personID = personID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Person{" + "personID=" + personID + ", firstName=" + firstName + ", lastName=" + lastName + ", loginID=" + loginID + ", password=" + password + ", birthDate=" + birthDate + ", amount=" + amount + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
    

    

    
    
}
