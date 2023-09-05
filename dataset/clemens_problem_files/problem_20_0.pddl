(define
    (problem problem_20_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G O W)
(cube2 W B O)
(cube3 B R Y)
(cube4 G W R)
(cube5 Y G O)
(cube6 R Y G)
(cube7 Y B O)
(cube8 R B W)
(edge12 Y G)
(edge13 B R)
(edge15 R W)
(edge24 R Y)
(edge26 G O)
(edge34 B O)
(edge37 G W)
(edge48 Y B)
(edge56 Y O)
(edge57 G R)
(edge68 B W)
(edge78 W O)
        
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