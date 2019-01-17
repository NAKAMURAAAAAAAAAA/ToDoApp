//  AddController.swift
import UIKit

//変数の設置
class TodoKobetsunonakami: NSObject, NSCoding{
    var todotext: String!
    var done: Bool!
    
    init(todotext: String, done: Bool) {
        self.todotext = todotext
        self.done = done
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        self.todotext = (aDecoder.decodeObject(forKey: "todotext") as! String)
        self.done = aDecoder.decodeBool(forKey: "done")
    }
    
    func encode(with aCoder: NSCoder) {
        if let text = todotext { aCoder.encode(todotext, forKey: "todotext") }
        if let done = done { aCoder.encode(done, forKey: "done") }
    }
}

class AddController: UIViewController {
    
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    
    //追加ボタンの設定
    @IBAction func TodoAddButten(_ sender: Any) {
        var todoArray = [TodoKobetsunonakami]()
        let todo = TodoKobetsunonakami(todotext: TodoTextField.text!, done: false)
        todoArray.insert(todo, at: 0)
        UserDefaults.standard.set(NSKeyedArchiver.archivedData(withRootObject: todoArray), forKey: "TodoList")
        TodoTextField.text = ""
    }
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
