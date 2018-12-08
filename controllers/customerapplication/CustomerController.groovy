package customerapplication

class CustomerController {
    def create() {
        def addressList = Address.list();
        render view:"create",model:[addressList:addressList];
    }
    def operation() {
        def customerList = Customer.list()
        render view:"operation",model:[customerList:customerList]
    }
    def save() {
        def customerIns = new Customer();
        customerIns.name = params.name;
        customerIns.bloodGroup = params.bloodGroup
        customerIns.dob = params.dateOfBirth
        customerIns.email = params.email
        customerIns.password = params.password
        def addressIns = Address.get(params.long("doorNo"));
        customerIns.address = addressIns;
        if(customerIns.validate()) {
            customerIns.save(flush:true);
            def customerList = Customer.list();
            render view:"operation",model:[customerList:customerList]
        } else {
            flash.message="Please check all the fields"
            def addressList = Address.list();
            render view:"create",model:[addressList:addressList];
        }
        
    }
    def list() {
        def customerList = Customer.list()
        render view:"list",model:[customerList:customerList]
    }
    def delete() {
        def customerName = params.customerName;
        def customerIns = Customer.get(customerName);
        customerIns.delete(flush:true)
        def customerList = Customer.list()
        render view:"operation",model:[customerList:customerList]
    }
    def update() {
        def id1 = params.oldCustomerName;
        def id = Integer.parseInt(id1);
       // def oldCustomerName = Customer.get(id);
        def newCustomerName = params.newCustomerName;
        Country.executeUpdate("update Customer c set c.name='"+newCustomerName+"' where c.id='"+id+"'")
        def customerList = Customer.list();
        render view:"operation",model:[customerList:customerList]
       
    }
}
