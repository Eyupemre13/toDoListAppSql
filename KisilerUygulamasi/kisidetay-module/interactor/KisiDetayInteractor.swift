

import Foundation

class KisiDetayInteractor : PresenterToInteractorKisiDetayProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("notlar.db")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func kisiGuncelle(kisi_id: Int, kisi_not: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE kisiler SET  kisi_not = ? WHERE kisi_id = ?", values: [kisi_not,kisi_id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}

