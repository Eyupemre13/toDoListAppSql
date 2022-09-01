

import Foundation

protocol ViewToPresenterKisiDetayProtocol {
    var kisiDetayInteractor:PresenterToInteractorKisiDetayProtocol? {get set}
    
    func guncelle(kisi_id:Int,kisi_not:String)
}

protocol PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi_id:Int,kisi_not:String)
}

protocol PresenterToRouterKisiDetayProtocol {
    static func createModule(ref:KisiDetayVC)
}
