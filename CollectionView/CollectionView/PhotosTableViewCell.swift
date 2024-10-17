import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    var photos: [UIImage] = [] {
        didSet {
            setupPhotos()
        }
    }
    
    private let photoStackView = UIStackView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView() {
        photoStackView.axis = .horizontal
        photoStackView.spacing = 8
        photoStackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(photoStackView)
        
        NSLayoutConstraint.activate([
            photoStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photoStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photoStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            photoStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
    }
    
    private func setupPhotos() {
        photoStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        for photo in photos.prefix(4) {
            let imageView = UIImageView(image: photo)
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 6
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            photoStackView.addArrangedSubview(imageView)
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
                imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
                imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2222)
            ])
        }
    }
}
