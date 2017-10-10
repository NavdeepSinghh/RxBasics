import Foundation

public func executeProcedure(for description:String, procedure: () -> Void){
    print("Procedure executed for:", description)
    procedure()
}
