pragma solidity ^0.4.0;
contract MyContract {
    address creator;
    uint256 myNumber;
    funtion MyContract() public
    {
        creator=msg.sender;
        myNumber=3;
        
    }
    function getCreator() public constant returns(address)
    {
        return creator;
    }
    function getMyNumber() public constant returns(uint256)
    {
        return myNumber;
    }
    function setMyNumber(uint256 myNewNumber) public
    {
        myNumber=myNewNumber;
    }
    function kill() public
    {
        if(msg.sender == creator)
        {
            selfdestruct(creator);
        }
    }
}