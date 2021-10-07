/*
Abstract:
A view showing the details for an animal.
*/

import SwiftUI

struct AnimalDetail: View {
    var animal: Animal

    var body: some View {
        ScrollView {
            animal.picture
            
            VStack(alignment: .leading) {
                Text(animal.name)
                    .font(.title)
            }
            .padding()
        }
        .navigationTitle(animal.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        AnimalDetail(animal: modelData.animals[0])
    }
}
