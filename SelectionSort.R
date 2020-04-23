### 2020/04/23 Keonwoo Park

### 데이터 구조론
### Selection sort
set.seed(1234)

a <- sample(1:10000,10000)
a
print(a)
Selection_Sort<- function(d,decreasing=FALSE){
  size_d <- length(d)
  if(decreasing == FALSE){
    for(i1 in 1:(size_d-1)){
      min = d[i1]
      min_index=i1
      for(i2 in (i1+1):size_d){
        if(d[i2]<min){
          min=d[i2]
          min_index=i2
        }
      }
      ### Swap
      tem_value = d[i1]
      d[i1] = d[min_index]
      d[min_index] = tem_value
    }
    
  }else{
  
  }
  return(d)
}
Selection_Sort(a)

#### 내가 짜는 Selection_sort()

selcection_sort<- function(d){
  size_d <- length(d)
  for(i1 in 1:(size_d-1)){
    for(i2 in (i1+1):size_d){
      if(d[i1]>d[i2]){
        temp_value = d[i1]
        d[i1] = d[i2]
        d[i2] = temp_value
      }
    }
  }
  return(d)
}
a <- sample(1:1000,1000)
selcection_sort(a)
a
