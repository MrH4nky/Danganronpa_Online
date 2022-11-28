
import UIKit

class EpisodesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Episodes"
        view.backgroundColor = .black
        
        
        setUpViews()
    }
    private func setUpViews(){
        createCustomNavigationBar()
        
        let searchList =
        createCustomBtn(imageName: "magnifyingglass",
         selector: #selector(searchListTapped))
        
        let filterList =
        createCustomBtn(imageName: "eyedropper.halffull",
         selector: #selector(filterListTapped))
        
        let customTitleView = createCustomTitleView(pageName: "Episodes")
        
        navigationItem.rightBarButtonItems = [searchList, filterList]
        navigationItem.titleView = customTitleView
    }
    
    @objc func searchListTapped(){
        print("searchListTapped")
    }
    
    @objc func filterListTapped(){
        print("filterListTapped")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
