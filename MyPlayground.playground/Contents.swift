// Linear Time

var names = ["Darclee", "Delmar", "Beaufort", "Pete", "GigMobile", "Jon", "Platform", "Eats"]

func printNames(names : [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}

printNames(names: names)
