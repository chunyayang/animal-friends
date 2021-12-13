/*
A single animal row item.
*/

import SwiftUI

struct AnimalRowItem: View {
    var animal: Animal

    var body: some View {
        VStack(alignment: .leading) {
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(animal.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct AnimalRowItem_Previews: PreviewProvider {
    static var modelData = ModelData()

    static var previews: some View {
        AnimalRowItem(animal: modelData.animals[0])
    }
}
