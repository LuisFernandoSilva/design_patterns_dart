import 'package:extra_design_patterns_dart/examples/behavioral/design_iterator/container.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_iterator/iterator.dart';

//Crie classe concreta implementando a interface Container.
//Esta classe possui uma classe interna NameIterator implementando a interface Iterator.

class NameRepository implements Container {
  @override
  IteratorPattern getIterator() {
    return NameIterator();
  }
}

class NameIterator implements IteratorPattern {
  List<String> names = ['Robert', 'John', 'Julie', 'Lora'];
  int index = 0;

  @override
  bool hasNext() {
    if (index < names.length) {
      return true;
    }
    return false;
  }

  @override
  Object next() {
    if (hasNext()) {
      return names[index++];
    }
    return null;
  }
}
