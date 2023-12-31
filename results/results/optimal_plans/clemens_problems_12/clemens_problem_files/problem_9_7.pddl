(define
    (problem problem_9_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W R G)
(cube2 R B W)
(cube3 O B Y)
(cube4 G R Y)
(cube5 G O Y)
(cube6 G O W)
(cube7 O B W)
(cube8 Y B R)
(edge12 O G)
(edge13 W G)
(edge15 B W)
(edge24 O Y)
(edge26 G R)
(edge34 Y R)
(edge37 O B)
(edge48 B Y)
(edge56 W R)
(edge57 Y G)
(edge68 O W)
(edge78 B R)
        
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