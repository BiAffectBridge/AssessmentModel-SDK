//
//  KeyboardOptions+SwiftUI.swift
//  
//
//  Copyright © 2017-2022 Sage Bionetworks. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// 1.  Redistributions of source code must retain the above copyright notice, this
// list of conditions and the following disclaimer.
//
// 2.  Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation and/or
// other materials provided with the distribution.
//
// 3.  Neither the name of the copyright holder(s) nor the names of any contributors
// may be used to endorse or promote products derived from this software without
// specific prior written permission. No license is granted to the trademarks of
// the copyright holders even if such marks are included in this software.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

import SwiftUI
import AssessmentModel

#if os(iOS)

extension TextAutoCapitalizationType {

    /// Return the `UITextAutocapitalizationType` that maps to this enum.
    public var uiType: UITextAutocapitalizationType {
        .init(rawValue: self.indexPosition) ?? .none
    }

    /// Return the `TextInputAutocapitalization` that maps to this enum.
    @available(iOS 15.0, *)
    public var textInputType: TextInputAutocapitalization {
        switch self {
        case .words:
            return .words
        case .sentences:
            return .sentences
        case .allCharacters:
            return .characters
        default:
            return .never
        }
    }
}

extension TextAutoCorrectionType {

    /// Return the `UITextAutocorrectionType` that maps to this enum.
    public var uiType: UITextAutocorrectionType {
        .init(rawValue: self.indexPosition) ?? .default
    }
}

extension TextSpellCheckingType {

    /// Return the `UITextSpellCheckingType` that maps to this enum.
    public var uiType: UITextSpellCheckingType {
        .init(rawValue: self.indexPosition) ?? .default
    }
}

extension KeyboardType {

    /// Return the `UIKeyboardType` that maps to this enum.
    public var uiType: UIKeyboardType {
        UIKeyboardType(rawValue: self.indexPosition) ?? .default
    }
}

#endif
