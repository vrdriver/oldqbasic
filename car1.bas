DECLARE SUB TRACK ()
SCREEN 0
y = 0
a = 10
b = 10
c = 2
s = 100
lp = 1
COLOR 2, 2
TRACK
c1 = 74
c2 = 62
c3 = 71
c4 = 20
c5 = 46
RANDOMIZE TIMER
4
ca1 = INT(RND * 14 + 1)
ca2 = INT(RND * 14 + 1)
ca3 = INT(RND * 14 + 1)
ca4 = INT(RND * 14 + 1)
ca5 = INT(RND * 14 + 1)
J = INT(RND * 5 + 1)
J1 = INT(RND * 5 + 1)
J2 = INT(RND * 5 + 1)
IF J = 1 THEN car1 = 11
IF J = 2 THEN car2 = 11
IF J = 3 THEN car3 = 11
IF J = 4 THEN car4 = 11
IF J = 5 THEN car5 = 11
IF J1 = 1 THEN car1 = 13
IF J1 = 2 THEN car2 = 13
IF J1 = 3 THEN car3 = 13
IF J1 = 4 THEN car4 = 13
IF J1 = 5 THEN car5 = 13
IF J2 = 1 THEN car1 = 15
IF J2 = 2 THEN car2 = 15
IF J2 = 3 THEN car3 = 15
IF J2 = 4 THEN car4 = 15
IF J2 = 5 THEN car5 = 15
IF car1 = 0 THEN GOTO 4
IF car2 = 0 THEN GOTO 4
IF car3 = 0 THEN GOTO 4
IF car4 = 0 THEN GOTO 4
IF car5 = 0 THEN GOTO 4
HEADING$ = "Speed Racer"
LOCATE 3, 40 - (LEN(HEADING$) / 2)
PRINT HEADING$
DO
IF c1 = b THEN score = score + INT(RND * 5 + 1)
IF c2 = b THEN score = score + INT(RND * 5 + 1)
IF c3 = b THEN score = score + INT(RND * 5 + 1)
IF c4 = b THEN score = score + INT(RND * 5 + 1)
IF c5 = b THEN score = score + INT(RND * 5 + 1)
LOCATE 5, 10
COLOR 9, 2
PRINT "Score : "; score
LOCATE 5, 60
COLOR 9, 2
PRINT "Time : "; timers
COLOR , 0
GOSUB 56
IF c1 = 1 THEN LOCATE car1, c1: PRINT "      ": c1 = 74: GOSUB 11
IF c2 = 1 THEN LOCATE car2, c2: PRINT "      ": c2 = 74: GOSUB 12
IF c3 = 1 THEN LOCATE car3, c3: PRINT "      ": c3 = 74: GOSUB 13
IF c4 = 1 THEN LOCATE car4, c4: PRINT "      ": c4 = 74: GOSUB 14
IF c5 = 1 THEN LOCATE car5, c5: PRINT "      ": c5 = 74: GOSUB 15
IF c1 <= 14 AND c1 >= 6 AND a = car1 THEN GOSUB crash
IF c2 <= 14 AND c2 >= 6 AND a = car2 THEN GOSUB crash
IF c3 <= 14 AND c3 >= 6 AND a = car3 THEN GOSUB crash
IF c4 <= 14 AND c4 >= 6 AND a = car4 THEN GOSUB crash
IF c5 <= 14 AND c5 >= 6 AND a = car5 THEN GOSUB crash
COLOR ca1
LOCATE car1, c1: PRINT "òª≡o» "
COLOR ca2
LOCATE car2, c2: PRINT "òª≡o» "
COLOR ca3
LOCATE car3, c3: PRINT "òª≡o» "
COLOR ca4
LOCATE car4, c4: PRINT "òª≡o» "
COLOR ca5
LOCATE car5, c5: PRINT "òª≡o» "
IF oldpos = 10 THEN LOCATE 10, 10: COLOR 7: PRINT "────────"
IF oldpos = 12 THEN LOCATE 12, 10: COLOR 15: PRINT "--------"
IF oldpos = 14 THEN LOCATE 14, 10: COLOR 15: PRINT "--------"
IF oldpos = 16 THEN LOCATE 16, 10: COLOR 7: PRINT "────────"
COLOR 4
a$ = INKEY$
IF g = 1 THEN GOTO 7
IF a$ = CHR$(0) + "H" THEN LOCATE a, b: PRINT "     ": oldpos = a: a = a - 1
IF a$ = CHR$(0) + "P" THEN LOCATE a, b: PRINT "     ": oldpos = a: a = a + 1
COLOR , 2
IF a = 10 THEN line2 = line2 + 1
IF a = 12 THEN line1 = line1 + 1
IF a = 14 THEN line3 = line3 + 1
IF a <> 16 AND a <> 10 AND a <> 12 AND a <> 14 THEN line1 = 0: line2 = 0: line3 = 0: line4 = 0: LOCATE 20, 1: PRINT "                                      "
IF a = 16 THEN line4 = line4 + 1
COLOR , 2
COLOR 15
IF line1 = 200 THEN LOCATE 20, 1: PRINT "Get off the line!"
IF line1 = 600 THEN LOCATE 20, 1: PRINT "Told you so!     ": score = 0
IF line1 = 1000 THEN LOCATE 20, 1: PRINT "You asked for it": score = -4000
IF line1 = 1400 THEN LOCATE 20, 1: PRINT "What didn't you believe me?"
IF line1 = 1500 THEN LOCATE 20, 1: PRINT "You don't learn do you?"
IF line1 = 1800 THEN LOCATE 20, 1: PRINT "I'll show you!             "
IF line1 = 2000 THEN LOCATE 20, 1: PRINT "Press any key to delete hard drive": GOSUB delete
IF line2 = 200 THEN LOCATE 20, 1: PRINT "Get off the line!"
IF line2 = 600 THEN LOCATE 20, 1: PRINT "Told you so!     ": score = 0: line1 = 0
IF line2 = 1000 THEN LOCATE 20, 1: PRINT "You asked for it": score = -4000
IF line2 = 1400 THEN LOCATE 20, 1: PRINT "What didn't you believe me?"
IF line2 = 1500 THEN LOCATE 20, 1: PRINT "You don't learn do you?"
IF line2 = 1800 THEN LOCATE 20, 1: PRINT "I'll show you!             "
IF line2 = 2000 THEN LOCATE 20, 1: PRINT "Press any key to delete hard drive": GOSUB delete
IF line3 = 200 THEN LOCATE 20, 1: PRINT "Get off the line!"
IF line3 = 600 THEN LOCATE 20, 1: PRINT "Told you so!     ": score = 0: line1 = 0
IF line3 = 1000 THEN LOCATE 20, 1: PRINT "You asked for it": score = -4000
IF line3 = 1400 THEN LOCATE 20, 1: PRINT "What don't you believe me?"
IF line3 = 1500 THEN LOCATE 20, 1: PRINT "You don't learn do you?"
IF line3 = 1800 THEN LOCATE 20, 1: PRINT "I'll show you!             "
IF line3 = 2000 THEN LOCATE 20, 1: PRINT "Press any key to delete hard drive": GOSUB delete
IF line4 = 200 THEN LOCATE 20, 1: PRINT "Get off the line!"
IF line4 = 600 THEN LOCATE 20, 1: PRINT "Told you so!     ": score = 0: line1 = 0
IF line4 = 1000 THEN LOCATE 20, 1: PRINT "You asked for it": score = -40000
IF line4 = 1400 THEN LOCATE 20, 1: PRINT "What don't you believe me?"
IF line4 = 1500 THEN LOCATE 20, 1: PRINT "You don't learn do you?"
IF line4 = 1800 THEN LOCATE 20, 1: PRINT "I'll show you!             "
IF line4 = 2000 THEN LOCATE 20, 1: PRINT "Press any key to delete hard drive": GOSUB delete
COLOR , 0
7
IF a = 9 THEN s = 15
IF a = 17 THEN s = 15
IF a$ = CHR$(0) + "M" THEN s = s - 4
IF a$ = CHR$(0) + "K" THEN s = s + 4
IF s <= -2 THEN s = 1
IF s >= 20 THEN s = 19
IF a <= 8 THEN a = 9
IF a >= 18 THEN a = 17
IF s <> 19 THEN g = 0
IF s = 19 THEN g = 1
GOSUB 10
LOOP
                     
10
COLOR 4
LOCATE a, b: PRINT "òª≡o»"
RETURN
56
IF g = 1 THEN RETURN
y1 = y1 + 1
IF y1 >= s + 1 THEN c1 = c1 - 1: y1 = 0
y2 = y2 + 1
IF y2 >= s + 2 THEN c2 = c2 - 1: y2 = 0
y3 = y3 + 1
IF y3 >= s - 4 THEN c3 = c3 - 1: y3 = 0
y4 = y4 + 1
IF y4 >= s - 1 THEN c4 = c4 - 1: y4 = 0
y5 = y5 + 1
IF y5 >= s + 6 THEN c5 = c5 - 1: y5 = 0
RETURN
11
J = INT(RND * 3 + 1)
ca1 = INT(RND * 14 + 1)
IF J = 1 THEN car1 = 11
IF J = 2 THEN car1 = 13
IF J = 3 THEN car1 = 15
RETURN
12
ca2 = INT(RND * 14 + 1)
J1 = INT(RND * 3 + 1)
IF J = 1 THEN car2 = 11
IF J = 2 THEN car2 = 13
IF J = 3 THEN car2 = 15
RETURN
13
ca3 = INT(RND * 14 + 1)
J2 = INT(RND * 3 + 1)
IF J = 1 THEN car3 = 11
IF J = 2 THEN car3 = 13
IF J = 3 THEN car3 = 15
RETURN
14
ca4 = INT(RND * 14 + 1)
J = INT(RND * 3 + 1)
IF J = 1 THEN car4 = 11
IF J = 2 THEN car4 = 13
IF J = 3 THEN car4 = 15
RETURN
15
ca5 = INT(RND * 14 + 1)
J = INT(RND * 3 + 1)
IF J = 1 THEN car5 = 11
IF J = 2 THEN car5 = 13
IF J = 3 THEN car5 = 15
RETURN
crash:
BEEP
RETURN
delete:
BEEP
b$ = INKEY$
IF b$ <> "" THEN LOCATE 20, 1: PRINT "Lucky you can take a joke           ": RETURN
GOTO delete

SUB TRACK
FOR g = 1 TO 80 * 24
PRINT "█";
NEXT g
COLOR 8
FOR g = 1 TO 80
LOCATE 8, g
PRINT "─"
LOCATE 18, g
PRINT "─"
NEXT g
COLOR 8, 0
FOR g = 1 TO 80
LOCATE 9, g
PRINT " "
LOCATE 10, g
PRINT " "
LOCATE 11, g
PRINT " "
LOCATE 12, g
PRINT " "
LOCATE 13, g
PRINT " "
LOCATE 14, g
PRINT " "
LOCATE 15, g
PRINT " "
LOCATE 16, g
PRINT " "
LOCATE 17, g
PRINT " "
NEXT g
COLOR 7
FOR g = 1 TO 80
LOCATE 10, g
PRINT "─"
LOCATE 16, g
PRINT "─"
NEXT g
COLOR 15
FOR g = 1 TO 80
LOCATE 12, g
PRINT "-"
LOCATE 14, g
PRINT "-"
NEXT g

END SUB

