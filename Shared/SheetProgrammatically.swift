// Örneğin yeni sayfada bir x butonuna basıldığında sheet kapansın gibi şeyleri
// veya koşullu durumları, programmatically ile yapmak isteyebiliriz.

// Sheet in kendi kendini dismiss etmesini (önceki sayfaya dönmesini) istiyoruz.

// Environment adında, bize harici olarak gelen değerleri saklayabilmemiz/ulaşabilmemiz için bir property unwrapper var.

// Kullanıcı light/dark modeda mı, hangi saat diliminde vs. gibi şeyler

// Enviromentten, mevcut ekranı dismiss etmemizi isteyebiliriz.

import SwiftUI

struct SeconddView: View {
    
    @Environment(\.dismiss) var dismiss2
    
    let name: String
    
    var body: some View {
        VStack{
            Text("Welcome to second view" + "\(name)")
            Button("Dismiss") {
                dismiss2()
            }
            
        }
        
    }
}

struct SheetProgrammatically: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Tap") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SeconddView(name: "berkay")
        }
    }
}




struct SheetProgrammatically_Previews: PreviewProvider {
    static var previews: some View {
        SheetProgrammatically()
    }
}
