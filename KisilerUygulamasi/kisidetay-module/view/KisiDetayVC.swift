

import UIKit

class KisiDetayVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!

    
    var kisi:Kisiler?
    
    var kisiDetayPresenterNesnesi:ViewToPresenterKisiDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KisiDetayRouter.createModule(ref: self)

        if let k = kisi {
            tfKisiAd.text = k.kisi_not
            
        }
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text , let k = kisi {
            kisiDetayPresenterNesnesi?.guncelle(kisi_id: k.kisi_id!, kisi_not: ka)
        }
    }
}
