struct KnapsackChromosome: RangeInitializedArray {
    typealias Element = Bool
    static let initializationRange = 10...10
    
    let array: [Element]    
    init(array: [Element]) {
        self.array = array
    }    
}
