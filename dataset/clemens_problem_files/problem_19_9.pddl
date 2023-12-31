(define
    (problem problem_19_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O G Y)
(cube2 B W R)
(cube3 G Y R)
(cube4 B Y R)
(cube5 O B Y)
(cube6 W R G)
(cube7 G O W)
(cube8 O W B)
(edge12 R B)
(edge13 W O)
(edge15 G R)
(edge24 G O)
(edge26 Y R)
(edge34 W G)
(edge37 B W)
(edge48 R W)
(edge56 O B)
(edge57 B Y)
(edge68 G Y)
(edge78 Y O)
        
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