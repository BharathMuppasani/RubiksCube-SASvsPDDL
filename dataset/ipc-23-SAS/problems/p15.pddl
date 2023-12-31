;; Generated with ../generator.py -s 2999 -o p15-2999.pddl -p p15-2999.plan 15
(define
(problem rubiks-cube-shuffle-15)
(:domain cube3)
(:objects yellow white blue green orange red)
(:init
    (cube1 green white red)
    (cube2 blue red yellow)
    (cube3 yellow green orange)
    (cube4 orange yellow blue)
    (cube5 yellow red green)
    (cube6 white orange blue)
    (cube7 blue red white)
    (cube8 orange green white)
    (edge12 white green)
    (edge24 yellow green)
    (edge34 red white)
    (edge13 green orange)
    (edge15 red blue)
    (edge26 yellow red)
    (edge48 orange yellow)
    (edge37 white orange)
    (edge56 blue white)
    (edge68 blue orange)
    (edge78 blue yellow)
    (edge57 red green)
)
(:goal
    (and
        (cube1 red white blue)
        (cube2 orange white blue)
        (cube3 red yellow blue)
        (cube4 orange yellow blue)
        (cube5 red white green)
        (cube6 orange white green)
        (cube7 red yellow green)
        (cube8 orange yellow green)

        (edge12 white blue)
        (edge24 orange blue)
        (edge34 yellow blue)
        (edge13 red blue)

        (edge15 red white)
        (edge26 orange white)
        (edge48 orange yellow)
        (edge37 red yellow)

        (edge56 white green)
        (edge68 orange green)
        (edge78 yellow green)
        (edge57 red green)

    )
)
)
