package customerapplication

class Customer {
    String name;
    String bloodGroup;
    Date dob;
    String email;
    String password;
    static constraints = {
        name(blank:false,nullable:false)
        bloodGroup(blank:false,nullable:false)
        dob(blank:false,nullable:false)
        email(blank:false,nullable:false)
        password(blank:false,nullable:false)
    }
    static belongsTo = [address:Address]
}
