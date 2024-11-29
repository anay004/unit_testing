import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/salary_calculation.dart';

void main() {
  //for a single unit test
  test("Single Test", () {
    SalaryCalculation sc = SalaryCalculation();
    int salary = sc.calculatesalary(2);

    expect(salary, 1000);
  });

  // For multiple tests
  group("Multiple Unit Test", () {
    test( "Test 1 ", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(2);

      expect(salary, 1000);
    });
    test( "Test 1 ", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(2);

      expect(salary, 1000);
    });
    test( "Test 1 ", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(2);

      expect(salary, 1000);
    });
  });
}