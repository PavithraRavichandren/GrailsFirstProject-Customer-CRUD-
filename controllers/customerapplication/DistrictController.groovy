package customerapplication

class DistrictController {

    def create() {
        def stateList = State.list();
        render view:"create",model:[stateList:stateList];
    }
    def save() {
        def districtName = params.districtName;
        def stateId1 = params.stateName;
        Integer stateId = Integer.parseInt(stateId1)
        def stateIns = State.get(stateId);
        def districtIns = new District();
        districtIns.name = districtName;
        districtIns.state = stateIns;
        if(districtIns.validate()) {
            districtIns.save(flush:true);
            def districtList = District.list();
            render(view:"operation",model:[districtList:districtList])
        } else {
            flash.message="Please check all the fields"
            def stateList = State.list();
            render view:"create",model:[stateList:stateList];
        }
    }
    
    def list() {
        def districtList = District.list();
        [districtList:districtList]
    }
    
    def operation() {
        def districtList = District.list();
        render(view:"operation",model:[districtList:districtList])
    }
    def delete() {
        def districtName = params.district;
        def districtIns = District.get(districtName)
        districtIns.delete(flush:true)
        def districtList = District.list();
        render view:"operation",model:[districtList:districtList]
    }
    def update() {
        def id1 = params.oldDistrict;
        def id = Integer.parseInt(id1);
        def oldDistrict = District.get(id);
        def newDistrict = params.newDistrict;
        State.executeUpdate("update District d set d.name='"+newDistrict+"' where d.id='"+id+"'")
        def districtList = District.list();
        render view:"operation",model:[districtList:districtList]
       
    }
}
