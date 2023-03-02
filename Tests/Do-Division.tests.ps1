Describe 'Tests for Do-Division' {

    It "Should add these numbers" {
        Do-Division -Num1 5 -Num2 2 | Should -Be 2.5
    }

    It "Should add other numbers" {
        Do-Division -Num1 21 -Num2 7 | Should -Be 3
    }

    It "Should throw error with incorrect input" {
        {Do-Division -Num1 30 -Num2 abc} | Should -Throw "Input has incorrect format"
    }
}