(define
    (problem problem_7_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y G R)
(cube2 R Y B)
(cube3 B O W)
(cube4 G Y O)
(cube5 G W O)
(cube6 W R G)
(cube7 Y B O)
(cube8 W R B)
(edge12 G R)
(edge13 B W)
(edge15 Y R)
(edge24 G O)
(edge26 O W)
(edge34 W R)
(edge37 G Y)
(edge48 B Y)
(edge56 B R)
(edge57 G W)
(edge68 O Y)
(edge78 B O)
        
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