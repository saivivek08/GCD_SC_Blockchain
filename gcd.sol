pragma solidity ^0.8.14;

contract GCDFinder {
    function findGCD(uint256 a, uint256 b) external pure returns (uint256) {
        require(a > 0 && b > 0, "Numbers must be greater than zero");
        while (b != 0) {
            uint256 temp = b;
            b = a % b;
            a = temp;
        }

        return a;
    }
}
