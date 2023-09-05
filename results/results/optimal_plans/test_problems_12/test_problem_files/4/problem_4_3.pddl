(define
    (problem problem_4_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O B W)
(cube2 R W G)
(cube3 Y B R)
(cube4 W G O)
(cube5 W R B)
(cube6 Y G R)
(cube7 Y B O)
(cube8 O Y G)
(edge12 W G)
(edge13 B W)
(edge15 B R)
(edge24 W O)
(edge26 R W)
(edge34 O B)
(edge37 Y B)
(edge48 O Y)
(edge56 G R)
(edge57 R Y)
(edge68 O G)
(edge78 Y G)
        
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