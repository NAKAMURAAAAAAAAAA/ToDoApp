//  ViewController.swift
import UIKit
//classの継承を追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //アンアーカイブしてデータを開示
    func loadTodos() -> [TodoKobetsunonakami]?{
        if let loadedData = UserDefaults().data(forKey: "TodoList") {
            let todos = NSKeyedUnarchiver.unarchiveObject(with: loadedData) as! [TodoKobetsunonakami]
            return todos
        }else {
            return nil
        }
    }
    
    
    
    
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //戻り値の設定(表示するcell数)
        var todokobetsunonakami = TodoKobetsunonakami(todotext: )
        return ???.count
    }
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //変数を作る
        guard let TodoCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as? cellTableViewCell  else {
            fatalError("The dequeued cell is not an instance of cellTableViewCell.")
        }
        //変数の中身を作る
        TodoCell.label.text = TodoKobetsunonakami.text[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    //セルの削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            TodoKobetsunonakami.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        //追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoKobetsunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
            
         }*/
    }
    
    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
