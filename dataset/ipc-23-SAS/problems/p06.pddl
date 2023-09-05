;; Generated with ../generator.py -s 4007 -o p06-4007.pddl -p p06-4007.plan 6
(define
(problem rubiks-cube-shuffle-6)
(:domain cube3)
(:objects yellow white blue green orange red)
(:init
    (cube1 yellow green red)
    (cube2 red yellow blue)
    (cube3 orange green white)
    (cube4 yellow blue orange)
    (cube5 blue white red)
    (cube6 white orange blue)
    (cube7 white red green)
    (cube8 green orange yellow)
    (edge12 yellow blue)
    (edge24 red blue)
    (edge34 blue orange)
    (edge13 yellow red)
    (edge15 blue white)
    (edge26 orange yellow)
    (edge48 green orange)
    (edge37 green yellow)
    (edge56 white red)
    (edge68 green white)
    (edge78 white orange)
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
