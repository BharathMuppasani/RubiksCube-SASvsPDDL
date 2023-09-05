(define
    (problem problem_17_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 B Y O)
(cube3 Y G O)
(cube4 W O B)
(cube5 G Y R)
(cube6 G O W)
(cube7 R W B)
(cube8 W G R)
(edge12 G O)
(edge13 Y O)
(edge15 Y B)
(edge24 R B)
(edge26 R Y)
(edge34 O W)
(edge37 Y G)
(edge48 W G)
(edge56 W R)
(edge57 G R)
(edge68 B W)
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