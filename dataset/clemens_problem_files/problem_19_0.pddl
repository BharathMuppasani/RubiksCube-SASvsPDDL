(define
    (problem problem_19_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B O Y)
(cube2 R B W)
(cube3 R G Y)
(cube4 W G O)
(cube5 W B O)
(cube6 O G Y)
(cube7 R G W)
(cube8 B R Y)
(edge12 R B)
(edge13 Y O)
(edge15 O B)
(edge24 W R)
(edge26 O W)
(edge34 G O)
(edge37 G R)
(edge48 G Y)
(edge56 G W)
(edge57 B W)
(edge68 B Y)
(edge78 R Y)
        
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