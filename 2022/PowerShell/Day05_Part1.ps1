#https://adventofcode.com/2022/day/5

$Day05Input = @"
[T]     [Q]             [S]        
[R]     [M]             [L] [V] [G]
[D] [V] [V]             [Q] [N] [C]
[H] [T] [S] [C]         [V] [D] [Z]
[Q] [J] [D] [M]     [Z] [C] [M] [F]
[N] [B] [H] [N] [B] [W] [N] [J] [M]
[P] [G] [R] [Z] [Z] [C] [Z] [G] [P]
[B] [W] [N] [P] [D] [V] [G] [L] [T]
1   2   3   4   5   6   7   8   9 
"@

$Day05Instructions = @"
move 5 from 4 to 9
move 3 from 5 to 1
move 12 from 9 to 6
move 1 from 6 to 9
move 3 from 2 to 8
move 6 from 3 to 9
move 2 from 2 to 9
move 2 from 3 to 5
move 9 from 8 to 1
move 1 from 6 to 9
move 1 from 8 to 3
move 14 from 1 to 2
move 8 from 2 to 6
move 2 from 2 to 7
move 2 from 5 to 8
move 5 from 2 to 6
move 9 from 7 to 8
move 1 from 9 to 8
move 5 from 6 to 9
move 1 from 3 to 8
move 1 from 7 to 5
move 1 from 1 to 5
move 4 from 1 to 7
move 15 from 6 to 1
move 4 from 7 to 6
move 2 from 5 to 7
move 9 from 8 to 7
move 13 from 1 to 3
move 8 from 6 to 9
move 1 from 6 to 8
move 1 from 7 to 5
move 2 from 1 to 3
move 4 from 7 to 1
move 13 from 3 to 6
move 2 from 1 to 3
move 1 from 5 to 8
move 2 from 3 to 4
move 5 from 7 to 1
move 4 from 1 to 9
move 2 from 4 to 5
move 4 from 6 to 2
move 3 from 2 to 5
move 6 from 8 to 1
move 7 from 6 to 7
move 1 from 3 to 5
move 1 from 2 to 4
move 8 from 1 to 8
move 4 from 6 to 2
move 3 from 5 to 3
move 1 from 4 to 3
move 2 from 1 to 3
move 8 from 8 to 5
move 2 from 3 to 8
move 4 from 5 to 3
move 1 from 9 to 2
move 1 from 8 to 3
move 1 from 2 to 1
move 15 from 9 to 3
move 6 from 7 to 5
move 1 from 7 to 3
move 2 from 2 to 8
move 6 from 9 to 4
move 22 from 3 to 6
move 3 from 8 to 6
move 1 from 1 to 2
move 2 from 9 to 8
move 6 from 4 to 7
move 6 from 7 to 2
move 16 from 6 to 9
move 8 from 2 to 1
move 4 from 6 to 1
move 2 from 3 to 4
move 9 from 5 to 4
move 1 from 7 to 9
move 1 from 6 to 2
move 3 from 5 to 7
move 16 from 9 to 4
move 2 from 7 to 1
move 4 from 6 to 3
move 1 from 9 to 5
move 1 from 9 to 7
move 1 from 7 to 6
move 1 from 7 to 9
move 2 from 9 to 2
move 1 from 6 to 1
move 2 from 8 to 1
move 11 from 4 to 2
move 9 from 2 to 6
move 9 from 6 to 1
move 15 from 4 to 6
move 1 from 4 to 2
move 1 from 5 to 3
move 6 from 6 to 4
move 3 from 2 to 1
move 2 from 4 to 6
move 3 from 6 to 2
move 7 from 6 to 2
move 1 from 4 to 7
move 1 from 7 to 2
move 5 from 3 to 6
move 1 from 5 to 4
move 1 from 4 to 5
move 8 from 1 to 6
move 1 from 4 to 8
move 12 from 6 to 1
move 1 from 3 to 4
move 1 from 4 to 1
move 1 from 3 to 4
move 2 from 6 to 5
move 31 from 1 to 7
move 2 from 5 to 7
move 1 from 8 to 2
move 1 from 5 to 8
move 1 from 8 to 6
move 3 from 4 to 9
move 3 from 9 to 4
move 2 from 4 to 3
move 2 from 1 to 6
move 2 from 3 to 8
move 1 from 4 to 9
move 4 from 2 to 9
move 17 from 7 to 8
move 3 from 8 to 2
move 2 from 9 to 4
move 4 from 2 to 5
move 1 from 1 to 4
move 1 from 9 to 3
move 8 from 8 to 4
move 1 from 9 to 4
move 4 from 8 to 3
move 8 from 2 to 5
move 2 from 2 to 3
move 1 from 2 to 1
move 1 from 8 to 4
move 2 from 8 to 1
move 1 from 7 to 2
move 1 from 8 to 6
move 3 from 4 to 5
move 8 from 4 to 7
move 1 from 2 to 8
move 1 from 8 to 1
move 2 from 4 to 7
move 8 from 5 to 9
move 7 from 5 to 2
move 6 from 3 to 1
move 6 from 1 to 2
move 9 from 9 to 4
move 5 from 7 to 4
move 2 from 1 to 2
move 9 from 4 to 2
move 3 from 6 to 2
move 1 from 6 to 8
move 1 from 8 to 9
move 1 from 3 to 5
move 6 from 7 to 5
move 4 from 4 to 2
move 19 from 2 to 3
move 1 from 4 to 6
move 7 from 7 to 5
move 2 from 1 to 8
move 12 from 3 to 4
move 3 from 4 to 1
move 1 from 6 to 3
move 8 from 5 to 9
move 3 from 9 to 7
move 6 from 4 to 3
move 3 from 1 to 2
move 13 from 3 to 7
move 3 from 4 to 6
move 4 from 9 to 4
move 14 from 7 to 8
move 3 from 5 to 2
move 3 from 2 to 6
move 1 from 6 to 2
move 1 from 3 to 9
move 4 from 4 to 6
move 11 from 2 to 7
move 2 from 9 to 6
move 3 from 5 to 6
move 1 from 9 to 7
move 14 from 6 to 5
move 1 from 5 to 1
move 4 from 5 to 8
move 2 from 5 to 6
move 4 from 2 to 5
move 1 from 2 to 9
move 14 from 8 to 5
move 2 from 8 to 4
move 3 from 8 to 7
move 5 from 5 to 4
move 13 from 5 to 7
move 5 from 7 to 6
move 31 from 7 to 9
move 7 from 6 to 7
move 6 from 5 to 7
move 1 from 8 to 9
move 1 from 5 to 3
move 1 from 3 to 5
move 1 from 1 to 8
move 6 from 4 to 3
move 1 from 8 to 5
move 1 from 4 to 1
move 33 from 9 to 3
move 13 from 7 to 1
move 29 from 3 to 2
move 3 from 3 to 8
move 1 from 5 to 2
move 20 from 2 to 6
move 19 from 6 to 4
move 1 from 7 to 4
move 5 from 1 to 7
move 1 from 8 to 7
move 2 from 8 to 5
move 10 from 2 to 8
move 6 from 3 to 9
move 4 from 7 to 1
move 1 from 3 to 5
move 1 from 1 to 2
move 1 from 7 to 6
move 1 from 2 to 8
move 1 from 8 to 7
move 4 from 9 to 7
move 2 from 5 to 2
move 1 from 8 to 5
move 1 from 8 to 6
move 7 from 8 to 3
move 2 from 9 to 4
move 3 from 5 to 1
move 2 from 2 to 5
move 5 from 7 to 8
move 10 from 4 to 1
move 5 from 8 to 5
move 10 from 1 to 3
move 2 from 6 to 4
move 1 from 7 to 3
move 1 from 8 to 1
move 3 from 5 to 8
move 12 from 4 to 7
move 3 from 5 to 3
move 16 from 1 to 7
move 2 from 3 to 7
move 1 from 5 to 6
move 3 from 8 to 4
move 1 from 4 to 7
move 1 from 6 to 3
move 14 from 3 to 1
move 5 from 3 to 8
move 1 from 3 to 5
move 1 from 7 to 6
move 1 from 6 to 2
move 13 from 7 to 2
move 1 from 5 to 3
move 3 from 4 to 2
move 1 from 3 to 5
move 3 from 8 to 9
move 2 from 8 to 9
move 1 from 6 to 4
move 5 from 2 to 4
move 3 from 2 to 5
move 7 from 7 to 3
move 7 from 4 to 7
move 5 from 3 to 7
move 8 from 2 to 3
move 5 from 9 to 5
move 11 from 1 to 9
move 4 from 3 to 1
move 1 from 2 to 7
move 4 from 1 to 7
move 22 from 7 to 3
move 5 from 3 to 4
move 1 from 7 to 1
move 1 from 1 to 4
move 3 from 4 to 6
move 3 from 1 to 3
move 2 from 6 to 1
move 2 from 4 to 9
move 13 from 9 to 1
move 1 from 6 to 5
move 4 from 7 to 1
move 3 from 1 to 6
move 19 from 3 to 9
move 5 from 3 to 1
move 18 from 9 to 8
move 1 from 9 to 3
move 11 from 1 to 7
move 1 from 4 to 5
move 13 from 8 to 1
move 7 from 5 to 8
move 7 from 8 to 5
move 3 from 6 to 5
move 2 from 3 to 9
move 1 from 3 to 7
move 5 from 5 to 2
move 10 from 1 to 5
move 9 from 7 to 9
move 11 from 5 to 2
move 2 from 8 to 4
move 1 from 4 to 3
move 2 from 7 to 3
move 1 from 7 to 4
move 3 from 8 to 3
move 8 from 5 to 2
move 2 from 3 to 8
move 4 from 3 to 8
move 6 from 2 to 6
move 5 from 1 to 8
move 8 from 2 to 7
move 2 from 4 to 7
move 9 from 2 to 9
move 4 from 7 to 8
move 5 from 1 to 8
move 3 from 7 to 4
move 1 from 8 to 3
move 3 from 7 to 2
move 3 from 1 to 9
move 1 from 4 to 9
move 1 from 6 to 3
move 18 from 8 to 5
move 1 from 8 to 2
move 2 from 4 to 9
move 3 from 2 to 1
move 2 from 2 to 3
move 24 from 9 to 8
move 3 from 3 to 7
move 15 from 8 to 2
move 12 from 2 to 5
move 1 from 7 to 4
move 1 from 3 to 1
move 28 from 5 to 4
move 1 from 7 to 9
move 2 from 2 to 1
move 4 from 6 to 3
move 1 from 5 to 3
move 1 from 5 to 9
move 1 from 2 to 6
move 5 from 3 to 5
move 8 from 4 to 2
move 2 from 6 to 2
move 1 from 7 to 3
move 4 from 2 to 8
move 3 from 1 to 2
move 5 from 2 to 5
move 3 from 5 to 4
move 2 from 1 to 5
move 2 from 2 to 1
move 4 from 9 to 2
move 7 from 8 to 9
move 1 from 3 to 1
move 1 from 1 to 7
move 2 from 8 to 3
move 4 from 9 to 3
move 9 from 5 to 7
move 3 from 3 to 5
move 1 from 5 to 3
move 7 from 7 to 9
move 1 from 7 to 9
move 1 from 5 to 9
move 1 from 5 to 1
move 1 from 8 to 5
move 9 from 9 to 1
move 2 from 7 to 2
move 1 from 5 to 6
move 4 from 3 to 2
move 11 from 2 to 4
move 1 from 8 to 4
move 1 from 8 to 2
move 1 from 2 to 8
move 1 from 6 to 5
move 1 from 8 to 6
move 6 from 1 to 7
move 1 from 5 to 6
move 1 from 6 to 5
move 3 from 9 to 8
move 3 from 8 to 1
move 3 from 7 to 8
move 1 from 6 to 9
move 1 from 2 to 4
move 1 from 9 to 7
move 2 from 7 to 9
move 10 from 1 to 6
move 2 from 9 to 3
move 1 from 5 to 7
move 3 from 7 to 5
move 3 from 5 to 3
move 4 from 6 to 3
move 18 from 4 to 2
move 3 from 4 to 1
move 1 from 1 to 3
move 2 from 1 to 2
move 8 from 2 to 9
move 1 from 4 to 7
move 1 from 7 to 1
move 3 from 9 to 2
move 3 from 8 to 6
move 1 from 4 to 9
move 7 from 2 to 8
move 7 from 6 to 7
move 3 from 9 to 2
move 3 from 2 to 5
move 6 from 4 to 6
move 2 from 5 to 6
move 3 from 3 to 6
move 6 from 6 to 3
move 5 from 7 to 5
move 2 from 4 to 8
move 5 from 5 to 2
move 1 from 7 to 2
move 4 from 6 to 4
move 1 from 7 to 8
move 1 from 6 to 4
move 1 from 5 to 7
move 1 from 3 to 4
move 1 from 6 to 4
move 2 from 9 to 1
move 3 from 1 to 3
move 1 from 3 to 1
move 9 from 2 to 1
move 8 from 1 to 5
move 1 from 7 to 1
move 1 from 9 to 1
move 4 from 5 to 7
move 4 from 7 to 5
move 1 from 1 to 9
move 5 from 2 to 4
move 1 from 9 to 6
move 8 from 8 to 9
move 18 from 4 to 9
move 3 from 5 to 4
move 2 from 6 to 5
move 1 from 8 to 5
move 17 from 9 to 6
move 2 from 8 to 1
move 1 from 4 to 6
move 8 from 6 to 3
move 1 from 1 to 8
move 5 from 5 to 3
move 1 from 1 to 7
move 1 from 8 to 6
move 2 from 4 to 5
move 6 from 9 to 4
move 1 from 7 to 5
move 7 from 6 to 8
move 2 from 6 to 5
move 6 from 8 to 3
move 1 from 9 to 6
move 2 from 9 to 5
move 1 from 3 to 1
move 1 from 8 to 6
move 7 from 5 to 6
move 7 from 6 to 7
move 5 from 4 to 9
move 1 from 4 to 5
move 2 from 9 to 6
move 3 from 1 to 7
move 5 from 6 to 8
move 1 from 1 to 5
move 21 from 3 to 6
move 3 from 7 to 2
move 2 from 9 to 3
move 1 from 9 to 7
move 5 from 5 to 7
move 7 from 6 to 7
move 14 from 7 to 1
move 3 from 2 to 8
move 12 from 1 to 4
move 5 from 7 to 6
move 1 from 7 to 4
move 8 from 8 to 3
move 8 from 3 to 5
move 6 from 5 to 6
move 1 from 5 to 3
move 2 from 1 to 8
move 2 from 8 to 3
move 10 from 3 to 7
move 8 from 4 to 3
move 3 from 4 to 9
move 3 from 9 to 2
move 1 from 2 to 5
move 2 from 2 to 9
move 13 from 3 to 1
move 1 from 4 to 1
move 2 from 1 to 7
move 1 from 5 to 8
move 1 from 9 to 6
move 1 from 9 to 2
move 1 from 4 to 9
move 8 from 6 to 2
move 1 from 9 to 5
move 1 from 2 to 8
move 1 from 5 to 9
move 2 from 2 to 3
move 12 from 6 to 8
move 1 from 3 to 7
move 8 from 8 to 4
move 1 from 9 to 1
move 13 from 1 to 3
move 2 from 4 to 5
move 12 from 7 to 2
move 1 from 5 to 8
move 3 from 3 to 8
move 2 from 4 to 1
move 1 from 1 to 9
"@

Clear-Host
function Format-SupplyStacks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$SupplyStackInputData
    )

    $Day05InputSplit = $Day05Input -split "`n" | ForEach-Object { $_.Trim() }

    $ParentStackContainer = [System.Collections.Generic.List[System.Collections.Generic.List[string]]]::new()

    $Day05InputStacks = $Day05InputSplit
    $Day05InputStack_Count = $Day05InputStacks.Count

    $CrateCharacterIndexGroups = ($Day05InputStacks | Select-String -Pattern ["A-Z"] -AllMatches).Matches | Select-Object -Property Index, Value
    $CrateCharacterIndexStacks = $CrateCharacterIndexGroups | Select-Object -ExpandProperty Index -Unique | Sort-Object
    
    ForEach ( $CrateCharacterIndexStack in $CrateCharacterIndexStacks ) {

        $CratesTopDown = $CrateCharacterIndexGroups | Where-Object { $_.Index -eq $CrateCharacterIndexStack } | Select-Object -ExpandProperty Value
        
        $CratesTopDownStack = [System.Collections.Generic.List[string]]::new()
        $CratesTopDownStack.Add($CratesTopDown)
        $ParentStackContainer.Add($CratesTopDownStack)

    }

    return $ParentStackContainer

}

function Format-MovementInstructions {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$MovementInstructions
    )

    $Day05InstructionsSplit = $Day05Instructions -split "`n" | ForEach-Object { $_.Trim() }

    #move 5 from 4 to 9 = 5,4,9
    $MovementInstructions = (($Day05InstructionsSplit -replace 'move ', '') -replace ' from ', ',') -replace ' to ', ','
    $MovementInstructionsSplit = $MovementInstructions -split " " | ForEach-Object { $_.Trim() }

    return $MovementInstructionsSplit

}

$FormattedSupplyStacks = (Format-SupplyStacks -SupplyStackInputData $Day05Input) -replace ' ', ''
$FormattedMovementInstructions = Format-MovementInstructions -MovementInstructions $Day05Instructions

$StackIndexOffBy1 = 1
ForEach ( $Instruction in $FormattedMovementInstructions ) {

    ($CrateMoveCount, $StackSource, $StackDestination) = $Instruction -split ','
    $StackSource = $StackSource - $StackIndexOffBy1
    $StackDestination = $StackDestination - $StackIndexOffBy1

    $CratesToMove = $FormattedSupplyStacks[$StackSource].Substring(0, $CrateMoveCount)
    $CratesToMoveLength = $CratesToMove.Length

    $CratesToMoveReversed = -join ($CratesToMove[-1.. - ($CratesToMove.Length)])

    $FormattedSupplyStacks[$StackDestination] = $CratesToMoveReversed + $FormattedSupplyStacks[$StackDestination]
    $FormattedSupplyStacks[$StackSource] = $FormattedSupplyStacks[$StackSource].Remove(0, $CratesToMoveLength)

}

$TopCrateOrdered = -join ($FormattedSupplyStacks.Substring(0, 1))

"After the rearrangement procedure completes, what crate ends up on top of each stack? Answer: $TopCrateOrdered."