/*
A horizontally scrollable row of animals.
*/

import SwiftUI

struct AnimalRow: View {
    var animals: [Animal]

    var body: some View {
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

struct AnimalRow_Previews: PreviewProvider {
    static var animals = ModelData().animals

    static var previews: some View {
        AnimalRow(animals: Array(animals.prefix(4)))
    }
}
