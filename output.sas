begin_version
3
end_version
begin_metric
0
end_metric
12
begin_variable
var0
-1
4
Atom isinside(box-3, cargo-room)
Atom isinside(box-3, holding-room)
Atom isinside(box-3, inspection-room)
Atom isinside(box-3, store-room)
end_variable
begin_variable
var1
-1
2
Atom isclimbingontopofanobject(shakey)
NegatedAtom isclimbingontopofanobject(shakey)
end_variable
begin_variable
var2
-1
4
Atom isinside(box-1, cargo-room)
Atom isinside(box-1, holding-room)
Atom isinside(box-1, inspection-room)
Atom isinside(box-1, store-room)
end_variable
begin_variable
var3
-1
4
Atom isinside(box-2, cargo-room)
Atom isinside(box-2, holding-room)
Atom isinside(box-2, inspection-room)
Atom isinside(box-2, store-room)
end_variable
begin_variable
var4
-1
4
Atom isinside(shakey, cargo-room)
Atom isinside(shakey, holding-room)
Atom isinside(shakey, inspection-room)
Atom isinside(shakey, store-room)
end_variable
begin_variable
var5
-1
2
Atom isturnedon(switch-3)
NegatedAtom isturnedon(switch-3)
end_variable
begin_variable
var6
-1
2
Atom isturnedon(switch-2)
NegatedAtom isturnedon(switch-2)
end_variable
begin_variable
var7
-1
2
Atom isturnedon(switch-1)
NegatedAtom isturnedon(switch-1)
end_variable
begin_variable
var8
-1
2
Atom isfree(gripper-1)
NegatedAtom isfree(gripper-1)
end_variable
begin_variable
var9
-1
2
Atom isfree(gripper-2)
NegatedAtom isfree(gripper-2)
end_variable
begin_variable
var10
-1
6
Atom iscarrying(ball-1, gripper-1)
Atom iscarrying(ball-1, gripper-2)
Atom isinside(ball-1, cargo-room)
Atom isinside(ball-1, holding-room)
Atom isinside(ball-1, inspection-room)
Atom isinside(ball-1, store-room)
end_variable
begin_variable
var11
-1
6
Atom iscarrying(ball-2, gripper-1)
Atom iscarrying(ball-2, gripper-2)
Atom isinside(ball-2, cargo-room)
Atom isinside(ball-2, holding-room)
Atom isinside(ball-2, inspection-room)
Atom isinside(ball-2, store-room)
end_variable
2
begin_mutex_group
3
10 0
11 0
8 0
end_mutex_group
begin_mutex_group
3
10 1
11 1
9 0
end_mutex_group
begin_state
0
1
0
0
0
1
1
1
0
0
2
2
end_state
begin_goal
5
2 2
3 1
4 0
10 3
11 5
end_goal
70
begin_operator
ascend shakey box-1 cargo-room
2
2 0
4 0
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-1 holding-room
2
2 1
4 1
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-1 inspection-room
2
2 2
4 2
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-1 store-room
2
2 3
4 3
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-2 cargo-room
2
3 0
4 0
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-2 holding-room
2
3 1
4 1
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-2 inspection-room
2
3 2
4 2
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-2 store-room
2
3 3
4 3
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-3 cargo-room
2
0 0
4 0
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-3 holding-room
2
0 1
4 1
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-3 inspection-room
2
0 2
4 2
1
0 1 1 0
1
end_operator
begin_operator
ascend shakey box-3 store-room
2
0 3
4 3
1
0 1 1 0
1
end_operator
begin_operator
carry shakey ball-1 cargo-room switch-1 gripper-1
3
1 1
4 0
7 0
2
0 10 2 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-1 cargo-room switch-1 gripper-2
3
1 1
4 0
7 0
2
0 10 2 1
0 9 0 1
1
end_operator
begin_operator
carry shakey ball-1 inspection-room switch-3 gripper-1
3
1 1
4 2
5 0
2
0 10 4 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-1 inspection-room switch-3 gripper-2
3
1 1
4 2
5 0
2
0 10 4 1
0 9 0 1
1
end_operator
begin_operator
carry shakey ball-1 store-room switch-2 gripper-1
3
1 1
4 3
6 0
2
0 10 5 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-1 store-room switch-2 gripper-2
3
1 1
4 3
6 0
2
0 10 5 1
0 9 0 1
1
end_operator
begin_operator
carry shakey ball-2 cargo-room switch-1 gripper-1
3
1 1
4 0
7 0
2
0 11 2 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-2 cargo-room switch-1 gripper-2
3
1 1
4 0
7 0
2
0 11 2 1
0 9 0 1
1
end_operator
begin_operator
carry shakey ball-2 inspection-room switch-3 gripper-1
3
1 1
4 2
5 0
2
0 11 4 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-2 inspection-room switch-3 gripper-2
3
1 1
4 2
5 0
2
0 11 4 1
0 9 0 1
1
end_operator
begin_operator
carry shakey ball-2 store-room switch-2 gripper-1
3
1 1
4 3
6 0
2
0 11 5 0
0 8 0 1
1
end_operator
begin_operator
carry shakey ball-2 store-room switch-2 gripper-2
3
1 1
4 3
6 0
2
0 11 5 1
0 9 0 1
1
end_operator
begin_operator
descend shakey
0
1
0 1 0 1
1
end_operator
begin_operator
on shakey switch-1 cargo-room
2
1 0
4 0
1
0 7 1 0
1
end_operator
begin_operator
on shakey switch-2 store-room
2
1 0
4 3
1
0 6 1 0
1
end_operator
begin_operator
on shakey switch-3 inspection-room
2
1 0
4 2
1
0 5 1 0
1
end_operator
begin_operator
push shakey box-1 cargo-room inspection-room door-3
1
1 1
2
0 2 0 2
0 4 0 2
1
end_operator
begin_operator
push shakey box-1 cargo-room store-room door-1
1
1 1
2
0 2 0 3
0 4 0 3
1
end_operator
begin_operator
push shakey box-1 holding-room inspection-room door-4
1
1 1
2
0 2 1 2
0 4 1 2
1
end_operator
begin_operator
push shakey box-1 inspection-room cargo-room door-3
1
1 1
2
0 2 2 0
0 4 2 0
1
end_operator
begin_operator
push shakey box-1 inspection-room holding-room door-4
1
1 1
2
0 2 2 1
0 4 2 1
1
end_operator
begin_operator
push shakey box-1 store-room cargo-room door-1
1
1 1
2
0 2 3 0
0 4 3 0
1
end_operator
begin_operator
push shakey box-2 cargo-room inspection-room door-3
1
1 1
2
0 3 0 2
0 4 0 2
1
end_operator
begin_operator
push shakey box-2 cargo-room store-room door-1
1
1 1
2
0 3 0 3
0 4 0 3
1
end_operator
begin_operator
push shakey box-2 holding-room inspection-room door-4
1
1 1
2
0 3 1 2
0 4 1 2
1
end_operator
begin_operator
push shakey box-2 inspection-room cargo-room door-3
1
1 1
2
0 3 2 0
0 4 2 0
1
end_operator
begin_operator
push shakey box-2 inspection-room holding-room door-4
1
1 1
2
0 3 2 1
0 4 2 1
1
end_operator
begin_operator
push shakey box-2 store-room cargo-room door-1
1
1 1
2
0 3 3 0
0 4 3 0
1
end_operator
begin_operator
push shakey box-3 cargo-room inspection-room door-3
1
1 1
2
0 0 0 2
0 4 0 2
1
end_operator
begin_operator
push shakey box-3 cargo-room store-room door-1
1
1 1
2
0 0 0 3
0 4 0 3
1
end_operator
begin_operator
push shakey box-3 holding-room inspection-room door-4
1
1 1
2
0 0 1 2
0 4 1 2
1
end_operator
begin_operator
push shakey box-3 inspection-room cargo-room door-3
1
1 1
2
0 0 2 0
0 4 2 0
1
end_operator
begin_operator
push shakey box-3 inspection-room holding-room door-4
1
1 1
2
0 0 2 1
0 4 2 1
1
end_operator
begin_operator
push shakey box-3 store-room cargo-room door-1
1
1 1
2
0 0 3 0
0 4 3 0
1
end_operator
begin_operator
release shakey ball-1 cargo-room gripper-1
2
1 1
4 0
2
0 10 0 2
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-1 cargo-room gripper-2
2
1 1
4 0
2
0 10 1 2
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-1 holding-room gripper-1
2
1 1
4 1
2
0 10 0 3
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-1 holding-room gripper-2
2
1 1
4 1
2
0 10 1 3
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-1 inspection-room gripper-1
2
1 1
4 2
2
0 10 0 4
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-1 inspection-room gripper-2
2
1 1
4 2
2
0 10 1 4
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-1 store-room gripper-1
2
1 1
4 3
2
0 10 0 5
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-1 store-room gripper-2
2
1 1
4 3
2
0 10 1 5
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-2 cargo-room gripper-1
2
1 1
4 0
2
0 11 0 2
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-2 cargo-room gripper-2
2
1 1
4 0
2
0 11 1 2
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-2 holding-room gripper-1
2
1 1
4 1
2
0 11 0 3
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-2 holding-room gripper-2
2
1 1
4 1
2
0 11 1 3
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-2 inspection-room gripper-1
2
1 1
4 2
2
0 11 0 4
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-2 inspection-room gripper-2
2
1 1
4 2
2
0 11 1 4
0 9 -1 0
1
end_operator
begin_operator
release shakey ball-2 store-room gripper-1
2
1 1
4 3
2
0 11 0 5
0 8 -1 0
1
end_operator
begin_operator
release shakey ball-2 store-room gripper-2
2
1 1
4 3
2
0 11 1 5
0 9 -1 0
1
end_operator
begin_operator
travel shakey cargo-room inspection-room door-3
1
1 1
1
0 4 0 2
1
end_operator
begin_operator
travel shakey cargo-room store-room door-1
1
1 1
1
0 4 0 3
1
end_operator
begin_operator
travel shakey holding-room inspection-room door-4
1
1 1
1
0 4 1 2
1
end_operator
begin_operator
travel shakey inspection-room cargo-room door-3
1
1 1
1
0 4 2 0
1
end_operator
begin_operator
travel shakey inspection-room holding-room door-4
1
1 1
1
0 4 2 1
1
end_operator
begin_operator
travel shakey inspection-room store-room door-2
1
1 1
1
0 4 2 3
1
end_operator
begin_operator
travel shakey store-room cargo-room door-1
1
1 1
1
0 4 3 0
1
end_operator
begin_operator
travel shakey store-room inspection-room door-2
1
1 1
1
0 4 3 2
1
end_operator
0
