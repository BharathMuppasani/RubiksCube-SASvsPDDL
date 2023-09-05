(define
    (problem problem_17_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O W G)
(cube2 B W R)
(cube3 Y O B)
(cube4 W O B)
(cube5 G O Y)
(cube6 W R G)
(cube7 B Y R)
(cube8 R G Y)
(edge12 O Y)
(edge13 G R)
(edge15 Y B)
(edge24 B R)
(edge26 W G)
(edge34 Y G)
(edge37 R Y)
(edge48 O B)
(edge56 G O)
(edge57 O W)
(edge68 W B)
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