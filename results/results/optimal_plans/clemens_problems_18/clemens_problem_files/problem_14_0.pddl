(define
    (problem problem_14_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G R Y)
(cube2 O G W)
(cube3 O B Y)
(cube4 B Y R)
(cube5 G O Y)
(cube6 W R G)
(cube7 B R W)
(cube8 B O W)
(edge12 Y G)
(edge13 O Y)
(edge15 W B)
(edge24 W O)
(edge26 O G)
(edge34 Y R)
(edge37 W G)
(edge48 B Y)
(edge56 R G)
(edge57 R B)
(edge68 O B)
(edge78 W R)
        
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