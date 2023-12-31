(define
    (problem problem_19_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B O Y)
(cube2 Y R G)
(cube3 B R Y)
(cube4 G O W)
(cube5 Y G O)
(cube6 R G W)
(cube7 O B W)
(cube8 W R B)
(edge12 G W)
(edge13 R G)
(edge15 G Y)
(edge24 B R)
(edge26 Y R)
(edge34 W O)
(edge37 B W)
(edge48 R W)
(edge56 O Y)
(edge57 O B)
(edge68 O G)
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