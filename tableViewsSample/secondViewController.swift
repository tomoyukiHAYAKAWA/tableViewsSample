//
//  secondViewController.swift
//  tableViewsSample
//
//  Created by Tomoyuki Hayakawa on 2018/02/12.
//  Copyright © 2018年 Tomoyuki Hayakawa. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // テーブルビュー
    @IBOutlet var secondTableView: UITableView!
    
    // ViewControllerから選択されたCell番号を受け取る変数
    var getCell: Int!

    // セルの要素をあらかじめ決めうち
    // 果物
    let fruitArray: [String] = ["リンゴ", "ブドウ", "バナナ", "オレンジ", "レモン", "ピーチ"]
    // スポーツ
    let sportArray: [String] = ["サッカー", "野球", "ラグビー", "卓球"]
    // アニメ
    let animeArray: [String] = ["ポ", "プ", "テ", "ピ", "ピ", "ッ", "ク"]
    // 野菜
    let vegetableArray: [String] = ["スイカ", "トマト", "キャベツ", "キュウリ", "大豆", "レタス", "サニーレタス"]
    // 映画
    let movieArray: [String] = ["ハリーポッター", "スターウォーズ", "アイアンマン", "スパイダーマン", "ゴーストバスターズ", "ブラックホークダウン", "タイタニック", "バックトゥーザフューチャー", "ジュラシックパーク"]
    // 飲み物
    let drinkArray: [String] = ["コーラ", "烏龍茶"]
    
    // 選択されたジャンルの配列の長さ変数
    var arrayLength: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューにTableViewCellを登録
        secondTableView.register(UINib(nibName: "secondTableViewCell", bundle: nil),forCellReuseIdentifier: "cell_02")
        
        secondTableView.delegate = self
        secondTableView.dataSource = self
        
        // 選択されたジャンルによってセルの数を変える
        // getCellの中身が・・・
        switch getCell {
            // 0のとき
        case 0:
            arrayLength = fruitArray.count
            // 1のとき
        case 1:
            arrayLength = sportArray.count
            // 2のとき
        case 2:
            arrayLength = animeArray.count
            // 3のとき
        case 3:
            arrayLength = vegetableArray.count
            // 4のとき
        case 4:
            arrayLength = movieArray.count
            // 5のとき
        case 5:
            arrayLength = drinkArray.count
        default:
            break
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // someArrayの中身の数だけセルを表示
        return arrayLength
    }
    
    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = secondTableView.dequeueReusableCell(withIdentifier: "cell_02", for: indexPath) as! secondTableViewCell
        
        // 選択されたジャンルによってセルの中身を変える
        // getCellの中身が・・・
        switch getCell {
        // 0のとき
        case 0:
            // セルのUILabelに配列の中身を順に表示
            cell.secondLabel.text = fruitArray[indexPath.row]
        // 1のとき
        case 1:
            cell.secondLabel.text = sportArray[indexPath.row]
        // 2のとき
        case 2:
            cell.secondLabel.text = animeArray[indexPath.row]
        // 3のとき
        case 3:
            cell.secondLabel.text = vegetableArray[indexPath.row]
        // 4のとき
        case 4:
           cell.secondLabel.text = movieArray[indexPath.row]
        // 5のとき
        case 5:
            cell.secondLabel.text = drinkArray[indexPath.row]
        default:
            break
        }
        
        return cell
    }
   
}
