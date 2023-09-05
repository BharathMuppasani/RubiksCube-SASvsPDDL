(define
    (problem problem_18_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G Y O)
(cube2 W O G)
(cube3 B W R)
(cube4 W R G)
(cube5 B O W)
(cube6 B Y R)
(cube7 R Y G)
(cube8 Y O B)
(edge12 Y O)
(edge13 R B)
(edge15 W G)
(edge24 B Y)
(edge26 O G)
(edge34 W B)
(edge37 W O)
(edge48 G R)
(edge56 O B)
(edge57 Y R)
(edge68 Y G)
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