(define
    (problem problem_12_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O Y B)
(cube2 G W O)
(cube3 W R B)
(cube4 Y R B)
(cube5 W G R)
(cube6 O G Y)
(cube7 R Y G)
(cube8 W B O)
(edge12 W O)
(edge13 B Y)
(edge15 O Y)
(edge24 B W)
(edge26 O B)
(edge34 R Y)
(edge37 W G)
(edge48 O G)
(edge56 R W)
(edge57 B R)
(edge68 Y G)
(edge78 R G)
        
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