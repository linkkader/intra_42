
extension IntExtension on int{
  List<int> toList(){
    return List.generate(this, (index) => index);
  }

  //in seconds
  Future sleep() async {
    await Future.delayed(Duration(seconds: this));
  }


}