import UIKit

class ViewController: UIViewController {
    
    private var locationButton: UIButton = {
        var button = UIButton()
        button.setTitle("모든 지역 ⌵", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var mySavedButton: UIButton = {
        var button = UIButton()
        button.setTitle("나의 저장", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var alarmButton: UIButton = {
        var button = UIButton()
        button.setTitle("알람", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var searchBar: UISearchBar = {
        var search = UISearchBar()
        search.placeholder = "검색"
        search.translatesAutoresizingMaskIntoConstraints = false
        
        return search
    }()
    
    typealias ImageCell = ImageCollectionViewCell
    
    private var ADBanner : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.footerReferenceSize = .zero
        layout.headerReferenceSize = .zero
        
        let banner = UICollectionView(frame: .zero, collectionViewLayout: layout)
        banner.isScrollEnabled = true
        banner.isPagingEnabled = true
        banner.showsHorizontalScrollIndicator = false
        banner.register(ImageCell.self, forCellWithReuseIdentifier: "ImageCell")
        banner.backgroundColor = .black
        
        return banner
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(locationButton)
        self.view.addSubview(mySavedButton)
        self.view.addSubview(alarmButton)
        self.view.addSubview(searchBar)
        self.view.addSubview(ADBanner)
        
        NSLayoutConstraint.activate([
            locationButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            locationButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            mySavedButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            mySavedButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 260)
        ])
        
        NSLayoutConstraint.activate([
            alarmButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            alarmButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 350)
        ])
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120),
            searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            searchBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            ADBanner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 160),
            ADBanner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
}
