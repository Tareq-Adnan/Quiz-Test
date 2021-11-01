d=0
e=0.5
id=$(yad --title="Quiz Test" --width=350 --text-align=center --separator="" --text="<span foreground='Dark Green'><b><big><big>Do you Want To Start The Quiz?</big></big></b></span>" \
--field="
":LBL \
--form \
--field="<span foreground='Dark Red'>Exam Code</span>":LBL --align=center \
--field="" \
--field="Write your Name":LBL \
--field="" \
--field="Click<span foreground='Dark Green'><big><b> OK </b></big></span> to Start                         <span foreground='Dark Green'><big><b> Cancel </b></big></span> to Close":LBL --align=center \
)

x=${id:0:1}

if [ $x -eq 1 ]
then
    a=$(yad --title="SHORT QUIZ" --text-align=center --width=755 --height=800 --timeout=600 --timeout-indicator=left --separator="" --text="<span foreground='Dark Green'><b><big><big><big>QUIZ TEST</big></big></big></b></span>
    Write Only (A,B,C,D) In Capital Latter"  \
--form --scroll \
--field="  Time: 10 Minutes     			                                                                                                                                                Total Mark: 20":LBL \
--field="":LBL \
--field="<b><big><big>   1. Which of the following is a Palindrome number?</big></big></b>":LBL \
--field="42042":CHK \
--field="101010":CHK \
--field="23232":CHK \
--field="01234":CHK \
--field="
":LBL \
--field="<b><big><big>   2. The country with the highest environmental performance index is...</big></big></b>":LBL \
--field="    A. France	         	  	B. Denmark	 		C.	 Switzerland				D. Finland":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   3. Which animal laughs like human being?</big></big></b>":LBL \
--field="Polar Bear":CHK \
--field="Hyena":CHK \
--field="Donkey":CHK \
--field="People":CHK \
--field="
":LBL \
--field="<b><big><big>   4. Who was awarded the youngest player award in Fifa World Cup 2006??</big></big></b>":LBL \
--field="    A. Wayne Rooney				B. Lucas Podolski				C. Lionel Messi				D. Christiano Ronaldo":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   5. Which is the third highest mountain in the world?</big></big></b>":LBL \
--field="    A. Mt. K2				B.  Mt. Kanchanjungha				C. Mt. Makalu				D. Mt. Kilimanjaro":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   6. What is the group of frogs known as?</big></big></b>":LBL \
--field="    A. A traffic				B. A toddler				C. A police				D. An Army":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   7. What is the National Game of England?</big></big></b>":LBL \
--field="    A. Football				B. Basketball				C. Cricket				D. Baseball":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   8. Study of Earthquake is called............</big></big></b>":LBL \
--field="    A. Seismology				. B. Cosmology				C. Orology				D. Etimology":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   9. Among the top 10 highest peaks in the world, how many lie in Nepal?</big></big></b>":LBL \
--field="    A. 6				B. 7				C. 8				D. 9":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="<b><big><big>   10. The Laws of Electromagnetic Induction were given by?</big></big></b>":LBL \
--field="    A. Faraday				B. Tesla				C. Maxwell				D. Coulomb":LBL \
--field="Write your Answer: " \
--field="
":LBL \
--field="       Click<span foreground='Dark Green'><big><b> OK </b></big></span> to Submit           					  										            <span foreground='Dark Green'><big><b> Cancel </b></big></span> to Close":LBL\
)
fi


if [ "${a:10:4}" == "TRUE" ]
then
   d=`echo $d+1 | bc`
fi
if [ "${a:19:1}" == "C" ]
then
    d=`echo $d+1 | bc`
fi
if [ "${a:25:4}" == "TRUE" ]
then
   d=`echo $d+$e | bc`
fi
if [ "${a:34:4}" == "TRUE" ]
then
    d=`echo $d+$e | bc`
fi
if [ "${a:38:1}" == "B" ]
then
    d=`echo $d+1 | bc`
fi
if [ "${a:39:1}" == "B" ]
then
   d=`echo $d+1 | bc`
fi
if [ "${a:40:1}" == "D" ]
then
    d=`echo $d+1 | bc`
fi
if [ "${a:41:1}" == "C" ]
then
   d=`echo $d+1 | bc`
fi
if [ "${a:42:1}" == "A" ]
then
   d=`echo $d+1 | bc`
fi
if [ "${a:43:1}" == "C" ]
then
    d=`echo $d+1 | bc`
fi
if [ "${a:44:1}" == "A" ]
then
   d=`echo $d+1 | bc`
fi

name=${id:1}
tot=10
sc=${d%.*}
res=`expr $tot - $sc`
if [ $sc -ge 6 ]
then
   yad --title="Result" --text-align=center --width=400 --text="<span foreground='Green'><big><big><b> 
   Congratulations!  </b></big></big></span>
   $name
   You are Passed!" \
--form \
--field="	  Your Score: $d":LBL \
--field="	  Right Answer: $sc":LBL \
--field="	  Wrong Answer: $res":LBL \\
elif [ $sc -lt 6 ] && [ $sc -gt 0 ]
then
   yad --title="Result" --text-align=center --width=500 --text="<span foreground='Green'><big><big><b> 
   Sorry!  </b></big></big></span>
   $name
   You are Failed!" \
--form \
--field="	  Your Score: $d":LBL \
--field="	  Right Answer: $sc":LBL \
--field="	  Wrong Answer: $res":LBL \\
else
  echo "Canceled!"
fi
   

