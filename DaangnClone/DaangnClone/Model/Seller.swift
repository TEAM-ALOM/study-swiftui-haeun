//
//  Model.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/08.
//

import Foundation
import SwiftUI
import CoreLocation

struct Seller: Hashable, Codable {
    var name: String = "당근클론"
    var location: String = "광진구"
    var temperature: Double = 36.8
    var price: String = "900,000"
    var title: String = "아이패드 프로 11 4세대"
    var region: String = "세종대 학생회관"
    var description: String = """
    당근마켓 판매 페이지 클론코딩입니다
    상품 사진은 애플 공홈에서 캡쳐해왔습니다
    거래 장소는 학교 학관 앞입니다
    """
    var images: [String] = ["SellingImage1", "SellingImage2", "SellingImage3"]
}
