/*
A horizontally scrollable row of animals.
*/

import SwiftUI

struct AnimalRow: View {
    var rowName: String
    var animals: [Animal]

    var body: some View {
        VStack(alignment: .leading) {
            Text(rowName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(animals) { animal in
                        NavigationLink(destination: AnimalDetail(animal: animal)) {
                            AnimalRowItem(animal: animal)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct AnimalRow_Previews: PreviewProvider {
    static var animals = ModelData().animals

    static var previews: some View {
        AnimalRow(rowName: "Row Name", animals: Array(animals.prefix(4)))
    }
}
