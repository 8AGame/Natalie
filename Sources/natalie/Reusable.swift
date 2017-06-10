//
//  Reusable.swift
//  Natalie
//
//  Created by Marcin Krzyzanowski on 07/08/16.
//  Copyright © 2016 Marcin Krzyzanowski. All rights reserved.
//

class Reusable: XMLObject {

    let kind: String
    lazy var reuseIdentifier: String? = self.xml.element?.attributes["reuseIdentifier"]
    lazy var customClass: String? = self.xml.element?.attributes["customClass"]

    override init(xml: XMLIndexer) {
        kind = xml.element!.name
        super.init(xml: xml)
    }

}
