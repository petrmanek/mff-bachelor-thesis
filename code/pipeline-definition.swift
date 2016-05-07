// Apply reproduction, then mutation.
let p1 = reproduction ---> mutation
// Non-deterministically select the operator.
let p2 = Choice(mutation, p: 0.3) ||| Choice(crossover, p: 0.7)
// A combination of both techniques.
let p3 = reproduction ---> (Choice(mutation, p: 0.3) 
                        ||| Choice(crossover, p: 0.7))
