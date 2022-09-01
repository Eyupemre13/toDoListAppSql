

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    var liste = [Kisiler]()
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("notlar.db")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        db?.open()
        
        do{
            let q = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while q.next() {
                let kisi = Kisiler(kisi_id: Int(q.string(forColumn: "kisi_id"))!,kisi_not: q.string(forColumn: "kisi_not")!)
                liste.append(kisi)
}
         
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func kisiAra(aramaKelimesi: String) {
        var liste = [Kisiler]()
        db?.open()
        
        do{
            let q = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_not like '%\(aramaKelimesi)%'", values: nil)
            
            while q.next() {
                let kisi = Kisiler(kisi_id: Int(q.string(forColumn: "kisi_id"))!,
                                 kisi_not: q.string(forColumn: "kisi_not")!)
                               
                liste.append(kisi)
            }
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func kisiSil(kisi_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM kisiler WHERE kisi_id = ?", values: [kisi_id])
            tumKisileriAl()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
