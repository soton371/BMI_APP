

class Calculate{
  var heightcm, weight, bmi, heightm;
  Calculate({this.weight, this.heightcm,this.bmi});

  result(){
    heightm = heightcm/100;
    bmi = weight/(heightm*heightm);
    return bmi.toStringAsFixed(1);
  }


  feedback(){
    if(bmi <= 18.5){
      return 'Your Weight is Under';
    }else if(bmi <= 24.9){
      return 'Your Weight is Normal';
    }else if(bmi <= 29.9){
      return 'Your Weight is Over';
    }else if(bmi >= 30){
      return 'Your Weight is Obesity';
    }
  }




}

