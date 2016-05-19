class CarEvaluator: SequentialEvaluator<CarChromosome> {
    let sim = CarSimulationEnvironment()
    let maxDuration = NSTimeInterval(30)
    let attempts = 3
    override func evaluateChromosome(chromosome: CarChromosome) 
        -> Fitness {
            sim.reset()
            sim.randomizeCurve()
            sim.controlProgram = NetDriver(net: chromosome.toFFNN())
            var results = [Fitness]()
            for _ in 1...attempts {
                sim.randomizeCar()
                let outcome = sim.run(maxDuration: maxDuration)
                results.append(Fitness(outcome.timeSpentOnTrack)
                    / Fitness(maxDuration))
            }

            return results.average
    }
}
