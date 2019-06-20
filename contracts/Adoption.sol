pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;
    //  Adopting apet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieveing the adopters
    function getAdopters() public view returns (adress[16] memory) {
        return adopters;
    }
}