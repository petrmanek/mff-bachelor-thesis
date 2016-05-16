let elitism = Elitism<MaxOneChromosome>()
let reproduction = Reproduction<MaxOneChromosome>(RandomSelection())
let mutation = Mutation<MaxOneChromosome>(RouletteSelection())
let crossover = OnePointCrossover<MaxOneChromosome>
    (TournamentSelection(order: 5))

let alg = GeneticAlgorithm<MaxOneChromosome>(
    generator: MersenneTwister(seed: 4242),
    populationSize: 200,
    executeEveryGeneration: elitism,
    executeInLoop: (Choice(reproduction, p: 0.5) 
        ||| Choice(mutation, p: 0.3) ||| Choice(crossover, p: 0.2)),
    evaluator: MaxOneEvaluator(),
    termination: (MaxNumberOfGenerations(1000) || FitnessThreshold(1))
)

// Execute the algorithm.
alg.run()
print(alg.population.bestIndividual!.chromosome)
