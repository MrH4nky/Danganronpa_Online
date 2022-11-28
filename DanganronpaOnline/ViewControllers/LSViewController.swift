
import UIKit

protocol LSViewControllerDelegate: class {
    func update (for val: Bool)
}

class LSViewController: UIViewController{
    private var introHappen = false
    private lazy var loadingScreen: UIImageView = {
        let loadingScreen = UIImageView(frame: CGRect(x: 0, y: 0, width: 160, height: 169))
        loadingScreen.image = UIImage(named: "Monokuma")
        return loadingScreen
    }()
    
    private weak var resDelegate: LSViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(loadingScreen)
        title = "Screen Loader"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loadingScreen.center = view.center
        
        if(!introHappen)
        {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { self.animate() })
        }
    }
    
    private func animate(){
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            
            let difX = size - self.view.frame.size.width
            let difY = self.view.frame.size.height - size
            
            
            self.loadingScreen.frame = CGRect(x: -(difX/2), y: difY/2, width: size, height: size)
        })
        
        UIView.animate(withDuration: 1.5, animations: {
            self.loadingScreen.alpha = 0
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
                    let menuController = MenuViewController()
                    menuController.modalTransitionStyle = .crossDissolve
                    menuController.modalPresentationStyle = .fullScreen
                    self.navigationController?.pushViewController(menuController, animated: true)
                    self.introHappen = true
                })
            }
        })
    }
}
