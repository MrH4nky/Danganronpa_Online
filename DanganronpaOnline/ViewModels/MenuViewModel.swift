

import Foundation
import UIKit

class MenuViewModel{
    private(set) var MenuBS: [MenuB] =	[
        MenuB (id: .Characters,
               name: "Characters", linkView: CharactersViewController()),
        MenuB (id: .Episodes, name: "Episodes", linkView: EpisodesViewController()),
        MenuB (id: .Locations, name: "Locations", linkView: LocationsViewController())
    ]
}
