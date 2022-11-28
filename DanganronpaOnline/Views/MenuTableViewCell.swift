import UIKit

protocol MenuTableViewCellDelegate: class {
    func didTapBtn (for menuE: MenuB)
}

class MenuTableViewCell: UITableViewCell {

    static let cellId = "MenuTableViewCell"
    
    // MARK: - UI
    
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
        let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.spacing = 4
        stackVw.axis = .vertical
        return stackVw
    }()

    private weak var delegate: MenuTableViewCellDelegate?
    private var menuE: MenuB?
    
    private lazy var nameLbl: UIButton = {
        let lbl = UIButton()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        lbl.setTitleColor(.black, for: .normal)
        lbl.titleShadowColor(for: .normal)
        
        return lbl
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVw.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.menuE = nil
        self.delegate = nil
        
        self.contentView.subviews.forEach { $0.removeFromSuperview() }
    }
    
    func configure(with item: MenuB, delegate: MenuTableViewCellDelegate){
        
        self.delegate = delegate
        self.menuE = item
        
        let btnH = contentStackVw.frame.height
        let btnW = contentStackVw.frame.width
        
        nameLbl.frame = CGRect(x: 0, y: 0, width: btnW, height: btnH)
        
        nameLbl.addTarget(self, action: #selector(didTapBtn), for: .touchUpInside)
        
        nameLbl.setTitle(item.id.name, for: .normal)
        if(item.id.name == "Characters"){
            nameLbl.setTitleColor(.white, for: .normal)
        }
        
        
        
        containerVw.backgroundColor = UIColor(patternImage: item.id.backgroundPic)

        containerVw.layer.borderWidth = 3
        containerVw.layer.borderColor = UIColor.white.cgColor
        
        self.contentView.addSubview(containerVw)
        
        self.contentView.backgroundColor = .black
        containerVw.addSubview(contentStackVw)
        
        contentStackVw.addArrangedSubview(nameLbl)
        
        
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            
            contentStackVw.topAnchor.constraint(equalTo: self.containerVw.topAnchor, constant: 50),
            contentStackVw.bottomAnchor.constraint(equalTo: self.containerVw.bottomAnchor, constant: -50),
            contentStackVw.leadingAnchor.constraint(equalTo: self.containerVw.leadingAnchor),
            contentStackVw.trailingAnchor.constraint(equalTo: self.containerVw.trailingAnchor),
        ])
    }
    
    @objc func didTapBtn(){
        if let menuE = menuE{
            delegate?.didTapBtn(for: menuE)
        }
    }
}


