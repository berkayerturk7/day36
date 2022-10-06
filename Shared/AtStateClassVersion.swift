import SwiftUI


class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
    
    // Published, state gibi çalışır. (1/2 State)
    // published değişkenlerinden herhangi birinin değişimi, body yi re-invoke eder.
}

struct AtStateClassVersion: View {
    
    @StateObject var user = User()
    //StateObject 1/2 state
    
    // StateObject, State'den farklı olarak class değişkenlerinin değişimlerini takip eder ve @Published olanları takip eder.
    
    // kullanıma göre private var da olabilir.
    
    // artık, değişiklikleri harici bir nesnede tutabiliyoruz
    
    // + user nesnesini farklı bir görünümde de kullanabiliriz. bunun için StateObject yerine ObservedObject kullanılır.
    
    
    var body: some View {
        VStack {
            Text(user.firstName + " " + user.lastName)
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

//The end result is that we can have our state stored in an external object, and, even better, we can now use that object in multiple views and have them all point to the same values.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AtStateClassVersion()
    }
}
