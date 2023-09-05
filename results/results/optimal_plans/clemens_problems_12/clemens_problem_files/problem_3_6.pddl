(define
    (problem problem_3_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R W B)
(cube2 O Y G)
(cube3 G W O)
(cube4 B W O)
(cube5 Y O B)
(cube6 Y G R)
(cube7 W R G)
(cube8 Y B R)
(edge12 W B)
(edge13 R B)
(edge15 R W)
(edge24 O G)
(edge26 O Y)
(edge34 W O)
(edge37 B Y)
(edge48 G Y)
(edge56 O B)
(edge57 W G)
(edge68 Y R)
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