package customerapplication

class District {
    String name
    static belongsTo = [state:State]
    static constraints = {
        name(blank:false)
    }
    static hasMany = [address:Address]
   
}
