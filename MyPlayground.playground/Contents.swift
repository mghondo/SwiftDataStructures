// Linear Time

//var names = ["Darclee", "Delmar", "Beaufort", "Pete", "GigMobile", "Jon", "Platform", "Eats"]

func containsUsingBinarySearch(_ value :Int) -> Bool {
    
    var lowerBound = 0
    var upperBound = self.count - 1
    var middle = 0
    var found = false
    
    while(lowerBound <= upperBound) {
        
        middle = (lowerBound + upperBound) / 2
        
        if( numbers[middle] == value) {
            found = true
            break
        } else if (numbers[middle] < value ) {
            lowerBound = middle + 1
        } else {
            upperBound = middle - 1
        }
    }
    return found
    
}
