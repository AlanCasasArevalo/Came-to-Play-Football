import Foundation

func getFootbalPlayers () -> [PlayerImageModel]! {
    let loadData: [PlayerImageModel]! = Bundle.main.decode(file: "player.json")
    return loadData
}

func getCategories () -> [CategoryModel]! {
    let loadData: [CategoryModel]! = Bundle.main.decode(file: "category.json")
    return loadData
}

func getProducts () -> [ProductItemModel]! {
    let loadData: [ProductItemModel]! = Bundle.main.decode(file: "product.json")
    return loadData
}


