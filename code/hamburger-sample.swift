class RestaurantStrategy: Randomizable {
    let hamburgerPrice: Double
    let drink: Drink
    let waiterSpeed: Speed

    init(generator: EntropyGenerator) {
        // Generate random values.
        hamburgerPrice = generator.nextInRange(min: 0.5, max: 10)
        drink = generator.next()
        waiterSpeed = generator.next()
    }
}
