(define
    (problem problem_14_10)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B Y R)
(cube2 B Y O)
(cube3 G O Y)
(cube4 G O W)
(cube5 W R B)
(cube6 O B W)
(cube7 G W R)
(cube8 Y R G)
(edge12 W B)
(edge13 W R)
(edge15 B O)
(edge24 W O)
(edge26 B Y)
(edge34 G O)
(edge37 R B)
(edge48 Y R)
(edge56 Y O)
(edge57 R G)
(edge68 W G)
(edge78 G Y)
        
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