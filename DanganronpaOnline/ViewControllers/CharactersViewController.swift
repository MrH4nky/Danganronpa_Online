

import UIKit

class CharactersViewController: UIViewController {

    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
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
        
        let customTitleView = createCustomTitleView(pageName: "Characters")
        
        navigationItem.rightBarButtonItems = [searchList, filterList]
        navigationItem.titleView = customTitleView
    }
    
    @objc func searchListTapped(){
        print("searchListTapped")
    }
    
    @objc func filterListTapped(){
        print("filterListTapped")
    }

}
