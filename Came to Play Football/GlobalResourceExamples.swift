import Foundation

func getFootbalPlayers () -> [PlayerImageModel]! {
    let loadData: [PlayerImageModel]! = Bundle.main.decode(file: "player.json")
    return loadData
}
