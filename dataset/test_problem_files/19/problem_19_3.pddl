(define
    (problem problem_19_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R Y G)
(cube2 B Y O)
(cube3 O W B)
(cube4 G O W)
(cube5 Y B R)
(cube6 W R G)
(cube7 B R W)
(cube8 Y G O)
(edge12 R G)
(edge13 W B)
(edge15 G O)
(edge24 W O)
(edge26 Y R)
(edge34 B Y)
(edge37 G Y)
(edge48 B R)
(edge56 O B)
(edge57 O Y)
(edge68 W G)
(edge78 R W)
        
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