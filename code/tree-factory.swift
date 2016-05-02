
class RobotProgramFactory: TreeFactory {
    /* ... */
}

class MyGenerator: MersenneTwister {
    let robotProgramFactory: RobotProgramFactory

    override init(seed: Int) {
        robotProgramFactory = RobotProgramFactory(generator: self)
        super.init(seed: seed)
    }
}
