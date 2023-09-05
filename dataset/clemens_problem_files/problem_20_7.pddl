(define
    (problem problem_20_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G Y O)
(cube2 R Y B)
(cube3 B W R)
(cube4 G W R)
(cube5 W O G)
(cube6 O B W)
(cube7 Y B O)
(cube8 R G Y)
(edge12 Y O)
(edge13 G O)
(edge15 G W)
(edge24 Y G)
(edge26 R B)
(edge34 W O)
(edge37 B Y)
(edge48 W R)
(edge56 O B)
(edge57 B W)
(edge68 R G)
(edge78 Y R)
        
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