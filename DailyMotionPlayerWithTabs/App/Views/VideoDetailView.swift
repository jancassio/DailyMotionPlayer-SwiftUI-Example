//
//  VideoDetailView.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import SwiftUI

struct VideoDetailView: View {
    
    let model: VideoModel
    
    var body: some View {
        ScrollView {
            VStack {
                DMPlayerView(withId: model.id)
                    .frame(idealHeight: 280)
                    .padding([.vertical])
                
                Text(model.title)
                    .font(.title)
                    .padding()
                
                Divider()
                
                Text(model.subtitle)
                    .font(.subheadline)
                
            }
        }
    }
}

struct FooView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(model: .sampleData2)
            .previewDisplayName("Sample 2")
    }
}
