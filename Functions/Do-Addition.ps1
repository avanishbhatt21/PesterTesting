function Do-Addition {

    Param (
        $Num1,
        $Num2
    )

    Try {
        $Result = $Num1 + $Num2
        return $Result
    } catch {
        throw "Input has incorrect format"
    }
    
}