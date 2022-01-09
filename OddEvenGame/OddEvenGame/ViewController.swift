//
//  ViewController.swift
//  OddEvenGame
//
//  Created by JuhoJung on 08/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLbl.text = String(comBallsCount)
        userBallCountLbl.text = String(userBallsCount)
        
        
    }
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!")
        print(self.getRandom())
        
        let alert = UIAlertController.init(title: "Game Start", message: "홀 짝을 선택해주세요", preferredStyle: .alert)
        
        let oddBtn = UIAlertAction.init(title: "홀", style: .default) { _ in
            print("홀 버튼을 클릭했습니다.")

            guard let input = alert.textFields?.first?.text, let value = Int(input) else{
                return
            }
            
            self.getWinner(count: value, select: "홀")
        }
            
        let evenBtn = UIAlertAction.init(title: "짝", style: .default) { _ in
            print("짝 버튼을 클릭했습니다.")
            
            guard let input = alert.textFields?.first?.text, let value = Int(input) else{
                return
            }
            
            self.getWinner(count: value, select: "짝")
        }
        alert.addTextField { TextField in
            TextField.placeholder = "배팅할 구슬의 개수를 입력해주세요"
        }
        
        
        
        alert.addAction(oddBtn)
        alert.addAction(evenBtn)
        
        self.present(alert, animated: true) {
            print("화면이 띄워졌습니다.")
        }
    }
    func getWinner(count: Int, select: String){
        let com = self.getRandom()
        let comType = com % 2 == 0 ? "짝" : "홀"
        
        var result = comType
        if comType == select {
            print("User Win")
            result = result + "(User Win)"
            self.calculateBalls(winner: "user", count: count)
        }
            else{
                result = result + "(Computer Win)"
                print("Computer Win")
                self.calculateBalls(winner: "com", count: count)
            }
        self.resultLbl.text = result
    }
    func calculateBalls(winner: String, count: Int){
        if winner == "com" {
            self.userBallsCount = self.userBallsCount - count
            self.comBallsCount = self.comBallsCount + count
        }else{
            self.userBallsCount = self.userBallsCount + count
            self.comBallsCount = self.comBallsCount - count
        }
        
        self.userBallCountLbl.text = "\(self.userBallsCount)"
        self.computerBallCountLbl.text = "\(self.comBallsCount)"
    }
    func getRandom() -> Int {
        return Int (arc4random_uniform(10) + 1)
    }
}

