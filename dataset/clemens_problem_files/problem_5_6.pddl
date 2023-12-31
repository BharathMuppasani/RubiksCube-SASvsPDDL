(define
    (problem problem_5_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O B W)
(cube2 O B Y)
(cube3 R B W)
(cube4 R B Y)
(cube5 Y G O)
(cube6 Y G R)
(cube7 W G O)
(cube8 W G R)
(edge12 R G)
(edge13 R W)
(edge15 O B)
(edge24 R Y)
(edge26 Y G)
(edge34 O G)
(edge37 R B)
(edge48 W G)
(edge56 W B)
(edge57 O Y)
(edge68 O W)
(edge78 Y B)
        
    )
    (:goal
        (and
            (cube1 R W B)
            (cube2 O W B)
            (cube3 R Y B)
            (cube4 O Y B)
            (cube5 R W G)
            (cube6 O W G)
            (cube7 R Y G)
            (cube8 O Y G)

            (edge12 W B)
            (edge24 O B)
            (edge34 Y B)
            (edge13 R B)

            (edge15 R W)
            (edge26 O W)
            (edge48 O Y)
            (edge37 R Y)

            (edge56 W G)
            (edge68 O G)
            (edge78 Y G)
            (edge57 R G)
 
        )
    )
)