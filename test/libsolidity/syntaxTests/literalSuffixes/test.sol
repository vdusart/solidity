function suffix(uint x) pure returns (uint) { return x; }

contract C {
    function f() public pure {
        // Zero and non-zero number
        0 suffix;
        //-0 suffix; // TODO: Should not trigger an error
        1 suffix;

        // Number with separators
        1_000 suffix;
        1_000_000 suffix;

        // Scientific notation
        10e0 suffix;
        10e10 suffix;
        10e76 suffix;

        // Suffix without a literal
        suffix;
    }
}
// ----
