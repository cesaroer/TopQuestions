//
//  TopQuestionsSwiftUIApp.swift
//  Shared
//
//  Created by chuynadamas on 8/21/21.
//

import Foundation
@testable import TopQuestionsKit

struct TestData {
	static var Questions: [Question] = {
		let url = Bundle.main.url(forResource: "Questions", withExtension: "json")!
		let data = try! Data(contentsOf: url)
		let wrapper = try! JSONDecoder().decode(Wrapper<Question>.self, from: data)
		return wrapper.items
	}()
	
	static let user = User(name: "Lumir Sacharov", reputation: 2345, profileImageURL: nil)
}
