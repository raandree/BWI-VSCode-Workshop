function Add-Numbers {
    <#
    .SYNOPSIS
    Adds two numbers together.

    .DESCRIPTION
    This function takes two integers as input and returns their sum.

    .PARAMETER a
    The first integer to add.

    .PARAMETER b
    The second integer to add.

    .EXAMPLE
    PS> Add-Numbers -a 5 -b 10
    15

    .NOTES
    Skriptname: Anleitung-Befehle.ps1

    Ersteller:
    Mario Wernecke (bs000h9eu)

    Funktion / Beschreibung:
    Handbuch alle Befehle und Syntax (die wir beneötigen)

    History:
    Datum      | Version | Bearbeiter               | Grund
    -------------------------------------------------------------------------------------------------
    01.01.2018 | 1.0     | Mario Wernecke           | Erstellung
    06.09.2024 | 2.0     | Mario Wernecke           | Überarbeitung
    31.10.2024 | 2.1     | Lothar Zok               | Ergänzung bei Variablen, Schleifen, Funktion
    #>

    param (
        [int]$a,
        [int]$b
    )
Write-Host gdfgf

    $a + $b
}

function Subtract-Numbers {
    param (
        [int]$a,
        [int]$b
    )

    $a - $b
}

function Multiply-Numbers {
    param (
        [int]$a,
        [int]$b
    )

    $a * $b
}

function Divide-Numbers {
    param (
        [int]$a,
        [int]$b
    )

    $a / $b
}
