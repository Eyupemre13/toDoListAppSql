

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("notlar.db")
        db = FMDatabase(path: kopyalanacakYer.path)
    }

    func kisiEkle(kisi_not: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO kisiler (kisi_not) VALUES (?)", values: [kisi_not])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
