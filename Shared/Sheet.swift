// sheet yapısı alert gibi çalışır. present modal dır.
// çift yönlü binding ister. kapanınca otomatik false a cekilir.

import SwiftUI

struct SecondView: View {
    
    let name: String
    
    var body: some View {
        Text("Welcome to second view " + "\(name)")
    }
}

struct ShowingAndHidingViews: View {
    
    @State private var showingSheet = false
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            Button("Tap") {
                showingSheet.toggle()
                
            }
            .sheet(isPresented: $showingSheet) {
                SecondView(name: name)
            }
            
            TextField("Bir isim giriniz: ", text: $name )
        }
        
    }
}

struct ShowingAndHidingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAndHidingViews()
    }
}
