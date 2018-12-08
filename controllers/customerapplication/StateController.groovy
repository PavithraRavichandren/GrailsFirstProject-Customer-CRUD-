package customerapplication

class StateController {

    def create() {
        def countryList = Country.list();
        render view:"create",model:[countryList:countryList];
    }
    def operation() {
        def stateList = State.list();
        render(view:"operation",model:[stateList:stateList])
    }
    def save() {
        def stateName = params.name;
        def country = params.country;
        Integer countryId = Integer.parseInt(country)
        def countryIns = Country.get(countryId);
        def stateIns = new State();
        stateIns.name = stateName;
        stateIns.country = countryIns;
        if(stateIns.validate()) {
            stateIns.save(flush:true);
            def stateList = State.list();
            render(view:"operation",model:[stateList:stateList])
        } else {
            flash.message="Please check all the fields"
            def countryList = Country.list();
            render view:"create",model:[countryList:countryList];
        }   
    }
    def list() {
        def stateList = State.list()
        [stateList:stateList]
    }
    def delete() {
        def stateName = params.stateName;
        def stateIns = State.get(stateName)
        stateIns.delete(flush:true)
        def stateList = State.list();
        render view:"operation",model:[stateList:stateList]
    }
    def update() {
        def id1 = params.oldState;
        def id = Integer.parseInt(id1);
        def oldState = State.get(id);
        def newState = params.newState;
        State.executeUpdate("update State s set s.name='"+newState+"' where s.id='"+id+"'")
        def stateList = State.list();
        render view:"operation",model:[StateList:stateList]
    }
}
