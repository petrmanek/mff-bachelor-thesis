// Terminate after the best fitness exceeds 0.6 or 200 generations pass.
let termination1: TerminationCondition<MyChromosome>
    = FitnessThreshold(0.6) || MaxNumberOfGenerations(200)

// Terminate if the best fitness does not reach 0.2 after the first
// 100 generations. Otherwise, terminate after 5000 generations.
let termination2: TerminationCondition<MyChromosome>
    = (!FitnessThreshold(0.2) && MaxNumberOfGenerations(100))
      || MaxNumberOfGenerations(5000)