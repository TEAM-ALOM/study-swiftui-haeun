//
//  MapView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/11.
//

import SwiftUI
import MapKit

struct Place : Identifiable {
    var id: UUID = UUID()
    var location: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.549264, longitude: 127.074941),
        span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
    )
    
    @State private var places = [
            Place(
                location: CLLocationCoordinate2D(latitude: 37.549264, longitude: 127.074941)
            )
        ]
        
        var body: some View {
            // 지도
            // annotationItems에 마커를 표시할 장소들을 넣어준다.
            Map(coordinateRegion: $region, annotationItems: places) { item in
                // 마커 생성
                // item: Place
                // 장소에서 location과 Color 정보를 가져와서 생성한다.
                MapMarker(coordinate: item.location, tint: .daangn)
            }
        }
    }
#Preview {
    MapView()
}
