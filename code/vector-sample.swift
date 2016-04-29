class Vector3D: Randomizable {
    
    let x: Double
    let y: Double
    let z: Double

    init(generator: EntropyGenerator) {
        // We only consider vectors
        // in a 3-dimensional cube from -10 to 10.
        let range = -10..10

        // Generate random values.
        x = generator.nextInRange(range)
        y = generator.nextInRange(range)
        z = generator.nextInRange(range)
    }

}
