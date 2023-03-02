Describe 'Tests for Do-Multiplication' {

    It "Should add these numbers" {
        Do-Multiplication -Num1 3 -Num2 5 | Should -Be 15
    }

    It "Should add other numbers" {
        Do-Multiplication -Num1 10 -Num2 -7 | Should -Be -70
    }

    It "Should throw error with incorrect input" {
        {Do-Multiplication -Num1 30 -Num2 abc} | Should -Throw "Input has incorrect format"
    }
}