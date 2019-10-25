






import Foundation
import CoreData


extension ListaNome {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ListaNome> {
        return NSFetchRequest<ListaNome>(entityName: "ListaNome")
    }

    @NSManaged public var unidade: Int64
    @NSManaged public var grama: Int64

}
