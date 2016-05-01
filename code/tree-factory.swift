
class RobotProgramFactory: TreeFactory {
    /* ... */
}

extension EntropyGenerator {
    public let robotProgramFactory
        = RobotProgramFactory(generator: self)
}
