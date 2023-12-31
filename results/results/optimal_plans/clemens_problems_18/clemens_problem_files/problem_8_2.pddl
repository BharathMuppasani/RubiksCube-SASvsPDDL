(define
    (problem problem_8_2)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W G O)
(cube2 G O Y)
(cube3 O B Y)
(cube4 O B W)
(cube5 Y R G)
(cube6 B Y R)
(cube7 R G W)
(cube8 B W R)
(edge12 W B)
(edge13 O Y)
(edge15 W G)
(edge24 O W)
(edge26 G O)
(edge34 Y B)
(edge37 G R)
(edge48 O B)
(edge56 Y R)
(edge57 Y G)
(edge68 R B)
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