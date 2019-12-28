//
//  AddImageViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/28/19.
//  Copyright © 2019 geeks. All rights reserved.
//


import UIKit
import YPImagePicker
import Photos

class AddImageViewController: UIViewController {

    @IBOutlet weak var imgPicture: UIImageView!
    
    lazy var picker: YPImagePicker =  {
        var config = YPImagePickerConfiguration()
        
        var photo: UIImage?
        
        config.isScrollToChangeModesEnabled = true
        config.onlySquareImagesFromCamera = true
        config.usesFrontCamera = false
        config.showsPhotoFilters = true
        config.shouldSaveNewPicturesToAlbum = true
        config.albumName = "DefaultYPImagePickerAlbumName"
        config.startOnScreen = YPPickerScreen.photo
        config.screens = [.library, .photo]
        config.showsCrop = .none
        config.targetImageSize = YPImageSize.original
        config.overlayView = UIView()
        config.hidesStatusBar = true
        config.hidesBottomBar = false
        config.preferredStatusBarStyle = UIStatusBarStyle.default
//        config.bottomMenuItemSelectedColour = UIColor(r: 38, g: 38, b: 38)
//        config.bottomMenuItemUnSelectedColour = UIColor(r: 153, g: 153, b: 153)
//        config.filters = [DefaultYPFilters...]
//
        
        config.library.options = nil
        config.library.onlySquare = false
        config.library.minWidthForItem = nil
        config.library.mediaType = YPlibraryMediaType.photo
        config.library.maxNumberOfItems = 1
        config.library.minNumberOfItems = 1
        config.library.numberOfItemsInRow = 4
        config.library.spacingBetweenItems = 1.0
        config.library.skipSelectionsGallery = false
        
        config.video.compression = AVAssetExportPresetHighestQuality
        config.video.fileType = .mov
        config.video.recordingTimeLimit = 60.0
        config.video.libraryTimeLimit = 60.0
        config.video.minimumTimeLimit = 3.0
        config.video.trimmerMaxDuration = 60.0
        config.video.trimmerMinDuration = 3.0
        
        return YPImagePicker(configuration: config)
        
        
        
        
        
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

    @IBAction func btnAddImage(_ sender: Any) {
        let picker = YPImagePicker()
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
               // self.imgPicture.image = photo.image
                 
            }
            picker.dismiss(animated: true, completion: nil)
        }
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func btnUpload(_ sender: Any) {

}
}
extension AddImageViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
