

import Foundation

//Ana protocoller
protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi:String)
    func kisiSil(kisi_id:Int)
}

//Taşıyıcı protocoller
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi:Array<Kisiler>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(kisilerListesi:Array<Kisiler>)
}

//Router
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
