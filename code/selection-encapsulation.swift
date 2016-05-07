class MyCustomSelection<Chromosome: ChromosomeType> {
    /* ... */
}

class MyCustomOperator<Chromosome: ChromosomeType> {
    override init(_ selection: Selection<Chromosome>) {
        let encapsulated = MyCustomSelection(selection)
        super.init(encapsulated)
    }
    /* ... */
}
