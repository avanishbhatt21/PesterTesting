Describe 'Tests for Do-Addition' {

    It "Should add these numbers" {
        Do-Addition -Num1 3 -Num2 5 | Should -Be 8
    }

    It "Should add other numbers" {
        Do-Addition -Num1 13 -Num2 7 | Should -Be 20
    }

    It "Should throw error with incorrect input" {
        {Do-Addition -Num1 30 -Num2 abc} | Should -Throw "Input has incorrect format"
    }
}