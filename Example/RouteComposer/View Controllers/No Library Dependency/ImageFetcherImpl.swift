//
// Created by Eugene Kazaev on 23/02/2018.
// Copyright (c) 2018 CocoaPods. All rights reserved.
//

import Foundation

class ImageFetcherImpl: ImagesFetcher {

    func loadImages(completion: @escaping ([String]) -> Void) {
        completion(["first", "second", "star"])
    }

}
