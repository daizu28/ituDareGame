//
//  ViewController.swift
//  ituDareGame
//
//  Created by 小林玲衣奈 on 2020/09/02.
//  Copyright © 2020 小林玲衣奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["むかしむかし", "ちきゅうがあおかったうころ", "シャワーちゅう", "おしょうがつ", "はれたひ", "まよなか" ]
    let dokodeArray: [String] = ["ディズニーランドで", "うちゅうで", "でんしゃで", "いぬのまえで", "がめんのなかで", "うみのそこで"]
    let daregaArray: [String] = ["ミッキーが", "おじいさんとおばあさんが", "ゆうれいが", "パスタつくったおまえが", "ますこみが", "ゆきちが"]
    let doshitaArray: [String] = ["てをふった", "アスファルトタイヤを切りつけながら暗闇を走り抜けた", "解けない愛のパズルを抱いた", "自由を持て余した", "350mlの缶ビールを買った", "かおをあげた"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //indexの値を+1する
        index = index + 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 5 {
            index = 0
        }
    }
    
    @IBAction func reset(){
        //それぞれのラベルを元に戻す
        itsuLabel.text = "___"
        dokodeLabel.text = "___"
        daregaLabel.text = "___"
        doshitaLabel.text =  "___"
        
        //indexを初期化する
        index = 0
        
    }
    
    @IBAction func random(){
        //乱数の生成
        let itsuIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in:0...5)
        
        //コンソールに出力
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        //ラベルに要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }

}

