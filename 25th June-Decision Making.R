#Decision Making
# if(condition) statement, only when the condition is true, the statement is executed
#following is simple if
x=10 
#if this condition is true it executes else it won't
if (x>5){
  print("Greater than 5")
}

#if-else statement
# if(condition) if the condition is true it executes statement1
#else it will execute statement 2
b=20
if(b>10){
  print("B is greater than 10")}else{
    print("B is lesser than 10")
  }

#IF-ELSE for take two numbers and find largest of two numbers
a=2
b=9
if(a>b){
  print("A is greater than B")
}else{
  print("A is lesser than B")
}


#Multiple ifs (else if)
a=10
b=20

if(a>b){
  print("A>B")
}else if(a==b){
  print("A==B")
}else{
  print("A<B")
}


#Questions:
# 1 find largest of 3 numbers
# 2 calculate total bill amount with foillowing condition if bill amount is >=5000/- give a discount of 5% else no discount

#1 Find largest of 3 numbers // Alternative is max()
a=1
b=2
c=3
if((a>b)&&(a>c)){
  sprintf("A = %d is the largest of 3 numbers",a)
}else if((b>a)&&(b>c)){
  sprintf("B = %d is the largest of 3 numbers",b)
}else{
  sprintf("C = %d is the largest of 3 numbers",c)
}


#2 Calculate bill discount amount
input=as.numeric(readline(prompt="Enter bill amount: "))
if(input<5000){
  sprintf("No discount on bill, bill amount is %d",input)
}else{
  disc=0.05*input #5% discount if input is > 5000
  amt=input-disc #Removing discounted amount from total amount
  sprintf("Discount on bill amount is %d",amt)
}



