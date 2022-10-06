// Storing user settings with user default

//  Az miktarda veri depolamak için UserDefaults uygun

//  Uygulama başlatıldığında UserDefaults'ta saklanılan her şey otomatik olarak yüklenir(çok şey olursa, uygulama başlatmak yavaşlar.) Fikir vermesi için 512kb + olmamalı

//  UserDefaults, kullanıcının uygulamayı en son ne zaman başlattığı, en son hangi haberi okuduğu veya pasif olarak toplanan diğer bilgiler gibi şeyleri depolamak için mükemmeldir.

//  Daha da iyisi, SwiftUI genellikle UserDefaults'u @AppStorage adlı güzel ve basit bir özellik sarmalayıcı içine sarabilir.

import SwiftUI


struct UserDefault: View {
    
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
                                //Tap yanlıs yazılsaydı default 0 dönerdi
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
            // butona basıldığında userDefaults'un Tap key li yere tapCount değerini kaydet.
        }
    }
}

struct StoringUserSettingswUserDefault_Previews: PreviewProvider {
    static var previews: some View {
        UserDefault()
    }
}

// AppStorage aracılığıyla UserDefaults'a erişim
// @AppStorage, @State gibi calısır, değer değiştiğinde body yi tekrar tetikler

// UserDefaults key'imiz tapCount olsun.
/*
 struct ContentView: View {
     @AppStorage("tapCount") private var tapCount = 0

     var body: some View {
         Button("Tap count: \(tapCount)") {
             tapCount += 1
         }
     }
 }
 */
