#Nested if-else
a=5
b=4
c=7
if(a>b){
  if(a>c){
    sprintf("a is largest -> %d",a)
  }else{
    sprintf("c is largest -> %d",c)
  }
}else{
  if(b>c){
    sprintf("b is largest ->%d",b)
  }else{
    sprintf("c is largest -> %d",c)
  }
}

#ifelse() function - syntax is ifelse(logical test,value if-true, value if-false)
a=4
b=5
ifelse(a>b,"a is greater","a is not greater") #There is no need to mention 'print' here.

#while() function - Used to repeat a set of statements if the condition is true

v1=c("Hello","While loop")
count=2

while(count<=7){
  print(v1)
count=count+1
}

#repeat() function - used to repeat a set of statements till break is used

#Ex1
v2=1
count=1

repeat{
  print(v2)
  count=count+1
  v2=v2+1
  if(count>=5){
    break
  }
}

#Ex2
v3<-c("Hi","Bye")
count = 1
repeat{
  print(v1)
  count=count+1
  if(count>=6){
    break
  }
}

#for() loop
#Ex1 
for(i in 1:5){
  print(i)
}

#Ex2
for(i in c(1,2,3)){
  print(i)
}

#Ex3
for(i in seq(0,20,2)){
  print(i)
}

#Ex4
for(i in seq(0,20,2)){ #Same logic as ex3
  if(i%%2==0){
    print(i)
  }
}
