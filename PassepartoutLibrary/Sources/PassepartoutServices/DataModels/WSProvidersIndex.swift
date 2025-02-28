//
//  WSProvidersIndex.swift
//  Passepartout
//
//  Created by Davide De Rosa on 11/24/19.
//  Copyright (c) 2023 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

public struct WSProvidersIndex: Codable {
    public struct Metadata: Codable, CustomStringConvertible {
        enum CodingKeys: String, CodingKey {
            case name

            case fullName

            case supportedVPNProtocols = "vpn"
        }

        public let name: WSProviderName

        public let fullName: String

        public let supportedVPNProtocols: [WSVPNProtocol]

        public init(name: WSProviderName, fullName: String, supportedVPNProtocols: [WSVPNProtocol]) {
            self.name = name
            self.fullName = fullName
            self.supportedVPNProtocols = supportedVPNProtocols
        }

        // MARK: CustomStringConvertible

        public var description: String {
            fullName
        }
    }

    public let metadata: [Metadata]

    public init(metadata: [Metadata]) {
        self.metadata = metadata
    }
}
