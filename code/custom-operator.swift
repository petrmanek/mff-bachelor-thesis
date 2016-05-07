class MyCustomOperator<Chromosome: ChromosomeType> {
    let parameter: Int // You can specify custom parameters.

    init(_ selection: Selection<Chromosome>, parameter: Int) {
        self.parameter = parameter
        super.init(selection)
    }

    override func apply(generator: EntropyGenerator,
        pool: MatingPool<Chromosome>) {
            // Select 42 chromosomes from the current generation.
            let selectedIndices = selection.select(generator,
                population: pool, numberOfIndividuals: 42)

            // Access the individuals.
            for index in selectedIndices {
                let individual = pool.individualAtIndex(index)

                // Do something with the individual...
            }
    }
}
