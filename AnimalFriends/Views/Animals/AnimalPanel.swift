/*
A panel to display the animal brief introduction.
*/

import SwiftUI

struct AnimalPanel: View {
    var animal: Animal

    var body: some View {
        VStack(alignment: .leading) {
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 210)
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Text(animal.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                Text(animal.gender)
                Text(animal.house)
            }
            .padding(15)
        }
        .padding(.top, 15)
    }
}

struct AnimalPanel_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        AnimalPanel(animal: modelData.animals[0])
    }
}
