package com.luv2code.springdemo.mvc;

import javax.validation.constraints.*;

public class Customer {
    private String firstName;
    @NotNull(message = "it can not be null")
    @Size(min = 1, message = "size does not match")
    private String lastName;

    @Min(value = 0,message = "it must be greater than or equal to 0")
    @Max(value = 10,message = "it must be smaller than or equal to 10")
    private int freePasses;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}",message = "only 5 digits or characters")
    private String postalCode;

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

    public int getFreePasses() {
        return freePasses;
    }

    public void setFreePasses(int freePasses) {
        this.freePasses = freePasses;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
}
