package customerapplication

class AddressController {

    def create() {
        def districtList = District.list();
        render view:"create",model:[districtList:districtList];
    }
    
    def save() {
        def addressIns = new Address();
        def id1 = params.distId;
        def id = Integer.parseInt(id1)
        def districtIns = District.get(params.long('distId'));
        addressIns.doorNo = params.doorNo;
        addressIns.streetName = params.streetName;
        addressIns.area = params.area;
        addressIns.pincode = params.pincode;
        addressIns.district = districtIns;
        if(addressIns?.validate()){
            addressIns.save(flush:true);
            System.out.println(id1+""+addressIns.doorNo+""+addressIns.streetName+""+
            addressIns.area+""+addressIns.pincode);
            def addressList = Address.list();
            render(view:"operation",model:[addressList:addressList])
        } else {
            flash.message="Please check all the fields"
            def districtList = District.list();
            render(view:"create",model:[districtList:districtList])
        }
    }
    def list() {
        def addressList = Address.list()
        render view:"list",model:[addressList:addressList]
    }
    def delete() {
        def doorNo = params.doorNo;
        def addressIns = Address.get(doorNo)
        addressIns.delete(flush:true)
        render view:"operation"
    }
     def operation() {
        def addressList = Address.list();
        render(view:"operation",model:[addressList:addressList])
    }
    
    
}
