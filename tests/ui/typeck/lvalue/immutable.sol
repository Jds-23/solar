//@compile-flags: -Ztypeck

contract Test {
    uint256 immutable IMMUT;

    constructor() {
        // Assignments to immutables in the constructor are allowed
        IMMUT = 1;
    }

    function test() external {
        IMMUT = 2; //~ ERROR: cannot assign to an immutable variable
    }
}
