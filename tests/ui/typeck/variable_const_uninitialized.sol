contract Test {
    uint constant x; //~ ERROR: constant variable must be initialized
    // These should all compile without errors
    uint constant y = 1;
    uint constant z = 2 + 3;
    bytes32 constant w = keccak256("test");
}
