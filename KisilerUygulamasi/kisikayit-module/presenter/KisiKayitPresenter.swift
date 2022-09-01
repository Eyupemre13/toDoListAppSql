

import Foundation

class KisiKayitPresenter : ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func ekle(kisi_not: String) {
        kisiKayitInteractor?.kisiEkle(kisi_not : kisi_not)
    }
}
