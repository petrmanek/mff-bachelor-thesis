class MySelection<Chromosome: ChromosomeType>: Selection<Chromosome> {
    override init() { }
    
    override func select(generator: EntropyGenerator,
        population: MatingPool<Chromosome>,
        numberOfIndividuals: Int) -> IndexSet {
            // Always select the first 3 individuals.
            return IndexSet([0, 1, 2])
    }    
}
