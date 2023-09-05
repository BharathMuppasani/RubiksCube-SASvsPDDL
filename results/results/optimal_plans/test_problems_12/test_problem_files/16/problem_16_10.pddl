(define
    (problem problem_16_10)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R W B)
(cube2 R W G)
(cube3 O Y G)
(cube4 G O W)
(cube5 O B Y)
(cube6 R B Y)
(cube7 W O B)
(cube8 G Y R)
(edge12 Y O)
(edge13 O G)
(edge15 R Y)
(edge24 B O)
(edge26 Y G)
(edge34 W O)
(edge37 W B)
(edge48 B Y)
(edge56 G W)
(edge57 B R)
(edge68 G R)
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