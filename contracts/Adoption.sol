pragma solidity ^0.5.0;

contract Adoption {
address[16] public adopters;
bool private isAdopted;
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);
  require(!isAdopted);
  adopters[petId] = msg.sender;
  isAdopted=true;
  return petId;
}
function getAdopters() public view returns (address[16] memory) {
  return adopters;
}

}