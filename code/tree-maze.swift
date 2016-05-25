
class GoCommandNode: ActionNode {
    override func perform(interpreter: TreeInterpreter) {
        guard interpreter.running else { return }
        // Tell the robot to go forward.
        // The interpreter contains the current context.
    }
    
    override func propagateClone(factory: RandomTreeFactory, 
        mutateNodeId id: Int) -> ActionNode {
            // This node contains no descendants.
            return GoCommandNode(id: self.id, maximumDepth: self.maximumDepth)
    }
}
