package customerapplication

class CountryController {

    def operation() {
        def countryList = Country.list();
        render(view:"operation",model:[countryList:countryList])
    }
    def create() {
        def countryIns = new Country()
        [countryIns:countryIns]
    }
    def save() {
        def countryIns = new Country(params)
       if(countryIns.validate()) {
            countryIns.save(flush: true, failOnError: true)
            def countryList = Country.list();
            render(view:"operation",model:[countryList:countryList])
        } else {
            flash.message="Please check all the fields"
            render(view:"create")
        }
    }
    def list() {
        def countryList = Country.list();
        [countryList:countryList]
    }
    def delete() {
        def country = params.country;
        def countryIns = Country.get(country);
        countryIns.delete(flush:true);
        def countryList = Country.list();
        render view:"operation",model:[countryList:countryList]
    }
    def update() {
        def id1 = params.oldCountry;
        def id = Integer.parseInt(id1);
        def oldCountry = Country.get(id);
        def newCountry = params.newCountry;
        Country.executeUpdate("update Country c set c.country='"+newCountry+"' where c.id='"+id+"'")
        def countryList = Country.list();
        render view:"operation",model:[countryList:countryList]
       
    }
}
