/// Make sure to run the main method in debug mode as asserts are not validated in release mode.
/// If running through command line, pass the --enable-asserts flag.
import 'package:functional_programming_dart/0_foundation/foundation.dart';
import 'package:functional_programming_dart/1_pure_functions_and_side_effects/pure_functions_and_side_effects.dart';
import 'package:functional_programming_dart/1_pure_functions_and_side_effects/refrential_transparency.dart';
import 'package:functional_programming_dart/1_pure_functions_and_side_effects/total_function_and_partial_function.dart';

void main(List<String> args) {
  /// Part 0. Foundation
  filterEvensInImperativeStyle();
  filterEvensInDeclarativeStyle();

  /// Part 1. Pure functions & Side effects
  totalFunctionVsPartialFunction();
  pureFunctionsAndSideEffects();
  referentialTransparency();
  totalAndPartialFunctionUsingDivide();
}
