//
// Created by Eugene Kazaev on 23/02/2018.
// Copyright (c) 2018 CocoaPods. All rights reserved.
//

import Foundation

protocol ImagesControllerDelegate: class {

    func didSelect(imageID: String, in controller: ImagesViewController)

}
