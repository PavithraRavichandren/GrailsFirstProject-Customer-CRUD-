package customerapplication

class Country {
    String country
    String continent
    static constraints = {
        country(blank:false,nullable:false)
        continent(blank:false,nullable:false)
    }
    static hasMany = [state:State];
}