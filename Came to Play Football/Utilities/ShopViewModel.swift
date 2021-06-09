import Foundation

class ShopViewModel: ObservableObject {
    @Published var isShowingProduct = false
    @Published var productSelected: ProductItemModel? = nil
    
    func cleanProduct () {
        isShowingProduct = false
        productSelected = nil
    }
}
