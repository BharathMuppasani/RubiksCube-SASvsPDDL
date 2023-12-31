(define
    (problem problem_14_2)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B O Y)
(cube2 R Y B)
(cube3 W G R)
(cube4 O G Y)
(cube5 G Y R)
(cube6 W O B)
(cube7 B R W)
(cube8 G W O)
(edge12 W O)
(edge13 W G)
(edge15 G Y)
(edge24 O Y)
(edge26 W R)
(edge34 G R)
(edge37 O G)
(edge48 B W)
(edge56 B O)
(edge57 R B)
(edge68 Y B)
(edge78 R Y)
        
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