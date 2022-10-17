% The unit test for testing the covariance function is defined in this file
classdef Test_Covariance < matlab.unittest.TestCase
    
  methods (Test)
        
    function test_covarianceFunction(testCase)
      % a patch in an image with scaled values for testing purposes
      pixels = [0.2124 0.2510 0.2549 0.2549; 
                0.2627, 0.2627, 0.2667, 0.2667; 
                0.2706, 0.2667, 0.2745, 0.2627] * 10;

      % weights to be applied
      weights = [0.248, 0.2520, 0.2520, 0.2480];

      actual_output = calcCovariance(pixels, weights, [0.24338; ...
                                      0.26470;
                                      0.26864]);
                                  
      % set the number of decimal places
      actual_output = round(actual_output, 5);

      expected_output = [4.82972, 5.22048, 5.29399; 
                         5.22048, 5.67575, 5.75985; 
                         5.29399, 5.75985, 5.84753];
      
      % compare the actual values with the expected values
      testCase.verifyEqual(actual_output, expected_output);
      
    end
  end
end
