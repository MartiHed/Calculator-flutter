class Calculator {
  dynamic text = '0'; // Początkowy tekst
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic operation = '';
  dynamic preOperation = '';

  String calculation(String buttonText) {
    if (buttonText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      operation = '';
      preOperation = '';
    } else if (operation == '=' && buttonText == '=') {
      switch (operation) {
        case '+':
          finalResult = addition();
          break;
        case '-':
          finalResult = subtraction();
          break;
        case 'x':
          finalResult = multiplication();
          break;
        case '/':
          finalResult = division();
          break;
      }
    } else if (buttonText == '+' || buttonText == '-' || buttonText == 'x' || buttonText == '/' || buttonText == '=') {
      if (numOne == 0) numOne = double.parse(result);
      else numTwo = double.parse(result);

      if (operation == '+') finalResult = addition();
      else if (operation == '-') finalResult = subtraction();
      else if (operation == 'x') finalResult = multiplication();
      else if (operation == '/') finalResult = division();

      preOperation = operation;
      operation = buttonText;
      result = '';
    } else if (buttonText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (buttonText == '.') {
      if (!result.toString().contains('.')) result = result.toString() + '.';
      finalResult = result;
    } else if (buttonText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1) : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + buttonText;
      finalResult = result;
    }

    text = finalResult; // Zaktualizuj tekst na wynik
    return finalResult;
  }

  String addition() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String subtraction() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String multiplication() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String division() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

  String get getText => text.toString(); // Zwróć tekst do wyświetlenia
}
