// onDelete() modifier'ı bir collectiondan eleman siler, genelde Listde kullanılır
// bu ozellık sadece ForEachde bulunur. Dolayısıyla ForEachsiz List kullanımında yapılamaz
// onDelete() in calismasi için, içine




import SwiftUI

struct DeletingItemsFromList: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
        VStack {
            List{
                ForEach(numbers, id: \.self) {
                    Text("Row \($0)")
                }.onDelete(perform: removeRows)
            }
            
            Button("Add Button") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }.toolbar{
            EditButton()
            // bu yapı, listeyi direkt editing mode'a alır.
        }
        }
}
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    // kullanicinin bulundugu offset indeki veriyi siler.
    
}

struct DeletingItemsFromList_Previews: PreviewProvider {
    static var previews: some View {
        DeletingItemsFromList()
    }
}
