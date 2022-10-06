// UserDefaults sistemine erişimimiz @AppStorage özellik sarmalayıcısı aracılığıyladır.

import SwiftUI

struct AppStorageStruct: View {
    // @State gibi çalışır.
    @AppStorage("tapCount") private var tapCount = 0

        var body: some View {
            Button("Tap count: \(tapCount)") {
                tapCount += 1
            }
        }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageStruct()
    }
}
