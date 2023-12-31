(define
    (problem problem_17_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y B O)
(cube2 G R W)
(cube3 B W R)
(cube4 W O B)
(cube5 R G Y)
(cube6 O W G)
(cube7 R B Y)
(cube8 O Y G)
(edge12 B O)
(edge13 G O)
(edge15 R G)
(edge24 W B)
(edge26 O W)
(edge34 R B)
(edge37 Y O)
(edge48 G Y)
(edge56 W G)
(edge57 R Y)
(edge68 B Y)
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