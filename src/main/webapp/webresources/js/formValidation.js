/**
 * Created by Travis on 9/2/2017.
 */
function validateCreateUser() {
    var firstname = document.forms["adduser"]["firstname"].value;
    var lastname = document.forms["adduser"]["lastname"].value;
    var address1 = document.forms["adduser"]["address1"].value;
    var address2 = document.forms["adduser"]["address2"].value;
    var city = document.forms["adduser"]["city"].value;
    var state = document.forms["adduser"]["state"].value;

    var zip = document.forms["adduser"]["zip"].value;
    if(zip.match(/(^\d{5}$)|(^\d{5}-\d{4}$)/)){
        if(confirm("You are about to create the following account.  Are you sure you wish to continue? \nFirst Name: " + firstname
        + "\nLast Name: " + lastname +"\nAddress 1: " + address1 + "\nAddress 2: " + address2 + "\nCity: " + city + "\nState: " + state
            + "\nZip: " + zip)){
            return true;
        }
        else{
            return false;
        }

    }
    else{
        alert("Invalid zipcode format.  It should either be 5 or 9 digits long. ex: 12345 OR 12345-1234")
        return false
    }
}