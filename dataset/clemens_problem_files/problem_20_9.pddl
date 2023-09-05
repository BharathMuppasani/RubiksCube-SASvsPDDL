(define
    (problem problem_20_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B W O)
(cube2 G W O)
(cube3 Y G O)
(cube4 B Y R)
(cube5 O B Y)
(cube6 Y G R)
(cube7 R W B)
(cube8 W G R)
(edge12 R B)
(edge13 O B)
(edge15 W B)
(edge24 R Y)
(edge26 O W)
(edge34 Y B)
(edge37 G W)
(edge48 G O)
(edge56 G R)
(edge57 W R)
(edge68 Y G)
(edge78 O Y)
        
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