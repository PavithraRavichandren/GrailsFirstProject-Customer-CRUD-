package customerapplication

class Address {
    String doorNo;
    String streetName;
    String area;
    String pincode;
    static constraints = {
        doorNo(blank:false,nullable:false)
        streetName(blank:false,nullable:false)
        area(blank:false,nullable:false)
        pincode(blank:false,nullable:false)
    }
    static belongsTo = [district:District]
    static hasMany = [customer:Customer]
}
