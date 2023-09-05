(define
    (problem problem_12_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R G W)
(cube2 W R B)
(cube3 B O W)
(cube4 G Y O)
(cube5 G Y R)
(cube6 O Y B)
(cube7 B Y R)
(cube8 O G W)
(edge12 G W)
(edge13 B W)
(edge15 W O)
(edge24 G O)
(edge26 R W)
(edge34 Y B)
(edge37 R B)
(edge48 G Y)
(edge56 R Y)
(edge57 G R)
(edge68 O B)
(edge78 O Y)
        
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