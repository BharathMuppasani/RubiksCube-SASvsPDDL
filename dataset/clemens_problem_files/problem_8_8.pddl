(define
    (problem problem_8_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y B O)
(cube2 B R Y)
(cube3 W B O)
(cube4 G R Y)
(cube5 B W R)
(cube6 W G O)
(cube7 Y O G)
(cube8 G R W)
(edge12 R W)
(edge13 W B)
(edge15 Y B)
(edge24 Y G)
(edge26 O Y)
(edge34 R Y)
(edge37 O W)
(edge48 R B)
(edge56 O G)
(edge57 W G)
(edge68 R G)
(edge78 O B)
        
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