class KnapsackEvaluator: SequentialEvaluator<KnapsackChromosome> {
    // These values are part of the problem instance.
    let thingValues: [Double], thingSizes: [Double]
    let knapsackCapacity: Double

    // This value is only calculated on the first time it is needed.
    lazy var maxValue: Double = self.thingValues.reduce(0, combine: +)

    override func evaluate(chromosome: KnapsackChromosome) -> Fitness {
        let size = zip(chromosome.array, thingSizes).reduce(0)
            { $0 + ($1.first ? $1.second : 0) }
        if size > knapsackCapacity { return 0 }

        let value = zip(chromosome.array, thingValues).reduce(0)
            { $0 + ($1.first ? $1.second : 0) }
        return value / maxValue
    }
}
