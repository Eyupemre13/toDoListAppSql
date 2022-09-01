

import UIKit

class KisiKayitVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!

    
    var kisiKayitPresenterNesnesi:ViewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KisiKayitRouter.createModule(ref: self)
    }

    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text  {
            kisiKayitPresenterNesnesi?.ekle(kisi_not : ka)
        }
    }
}
