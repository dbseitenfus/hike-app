//
//  CustomListRowView.swift
//  Hike
//
//  Created by Daniel Seitenfus on 27/02/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if let content = rowContent {
                Text(content)
                    .foregroundColor(.customGrayMedium)
            } else if let linkLabel = rowLinkLabel, let linkDestination = rowLinkDestination {
                Link(linkLabel, destination: URL(string: linkDestination)!)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                        Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
                    
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "John Doe", rowTintColor: .pink)
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
    }
}
