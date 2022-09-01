

import Foundation

protocol ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor:PresenterToInteractorKisiKayitProtocol? {get set}
    
    func ekle(kisi_not:String)
}

protocol PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_not:String)
}

protocol PresenterToRouterKisiKayitProtocol {
    static func createModule(ref:KisiKayitVC)
}
