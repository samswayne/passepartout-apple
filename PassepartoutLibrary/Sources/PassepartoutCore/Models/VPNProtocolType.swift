//
//  VPNProtocolType.swift
//  Passepartout
//
//  Created by Davide De Rosa on 3/20/22.
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

public enum VPNProtocolType: String, Codable {
    case openVPN = "ovpn"

    case wireGuard = "wg"
}

public protocol VPNProtocolProviding {
    var vpnProtocol: VPNProtocolType { get }
}

extension VPNProtocolType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .openVPN:
            return "OpenVPN"

        case .wireGuard:
            return "WireGuard"
        }
    }
}
