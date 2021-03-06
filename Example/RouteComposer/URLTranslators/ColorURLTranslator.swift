//
// Created by Eugene Kazaev on 15/01/2018.
// Copyright (c) 2018 HBC Tech. All rights reserved.
//

import Foundation

class ColorURLTranslator: ExampleURLTranslator {

    func destination(from url: URL) -> ExampleDestination? {
        guard let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false),
              let queryItems = urlComponents.queryItems,
              let colorItem = queryItems.first(where: { $0.name == "color" }),
              let colorValue = colorItem.value,
              let screen = ExampleConfiguration.step(for: ExampleTarget.color) else {
            return nil
        }

        return ExampleDestination(finalStep: screen,
                context: ExampleDictionaryContext( arguments: [Argument.color: colorValue]), ExampleAnalyticsParameters(source: .appLink, webpageURL: url, referrerURL: nil))
    }

}
