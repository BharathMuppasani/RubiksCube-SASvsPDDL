(define
    (problem problem_4_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R W B)
(cube2 B Y O)
(cube3 G W O)
(cube4 B W O)
(cube5 Y B R)
(cube6 Y O G)
(cube7 W R G)
(cube8 Y R G)
(edge12 W B)
(edge13 R B)
(edge15 R W)
(edge24 O G)
(edge26 B Y)
(edge34 W O)
(edge37 R Y)
(edge48 O Y)
(edge56 O B)
(edge57 W G)
(edge68 Y G)
(edge78 R G)
        
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