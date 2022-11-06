contract Underflow {
    uint private Balance;
    
    function sub(uint val) returns (bool, uint){
        Balance -= val; // complicated math with possible underflow

        // possible auditor assert
        assert(Balance =< val); 
    }
}