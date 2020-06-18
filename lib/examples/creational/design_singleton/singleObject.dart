//singleton class

class SingleObject{
  //cria um objeto de singleObject
  static SingleObject _instance = SingleObject();
  //cria se um contructor privado vazio
  SingleObject _empty(){}

  static SingleObject getInstance(){
    return _instance;
  }

  void showMessage(){
    print('Hello world!!');
  }

}