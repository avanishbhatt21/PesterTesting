Describe 'Tests for Do-Subtraction' {

    It "Should add these numbers" {
        Do-Subtraction -Num1 5 -Num2 3 | Should -Be 2
    }

    It "Should add other numbers" {
        Do-Subtraction -Num1 7 -Num2 13 | Should -Be -6
    }

    It "Should throw error with incorrect input" {
        {Do-Subtraction -Num1 30 -Num2 abc} | Should -Throw "Input has incorrect format"
    }
}