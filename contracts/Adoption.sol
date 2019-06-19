pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;
    //  Adopting apet
    function adopt(uint petId) public returns (uint) {
        require(petId >= && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }
}