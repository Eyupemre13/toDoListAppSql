

import Foundation

class KisiDetayPresenter : ViewToPresenterKisiDetayProtocol {
    var kisiDetayInteractor: PresenterToInteractorKisiDetayProtocol?
    
    func guncelle(kisi_id: Int, kisi_not: String) {
        kisiDetayInteractor?.kisiGuncelle(kisi_id: kisi_id, kisi_not: kisi_not)
    }
}
