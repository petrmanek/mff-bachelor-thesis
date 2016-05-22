class CarEvaluator: SequentialEvaluator<CarChromosome> {
    let sim = CarSimulation()
    let maxDistance = Double(55.55 * 3600)
    override func evaluateChromosome(chromosome: CarChromosome) 
        -> Fitness {
            sim.reset()
            sim.controlProgram = NetDriver(net: chromosome.toFFNN())
            var sumDistance = Double(0)
            for _ in 1...5 {
                sim.randomizeCurve()
                sim.randomizeCar()
                let outcome = sim.run(maxDuration: 3600)
                sumDistance += outcome.distanceTraveledOnTrack
            }
            return Fitness(sumDistance) / Fitness(5 * maxDistance)
    }
}
