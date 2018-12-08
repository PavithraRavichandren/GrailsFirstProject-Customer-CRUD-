package customerapplication

class State {
    String name;
    static constraints = {
        name(blank:false,nullable:false)
    }
    static belongsTo = [country:Country]
    static hasMany = [district:District]
}
