function Do-Multiplication {

    Param (
        $Num1,
        $Num2
    )

    try {
        $Result = $Num1 * $Num2
        return $Result
    } catch {
        throw "Input has incorrect format"
    }

}