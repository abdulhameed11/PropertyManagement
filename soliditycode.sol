

pragma solidity 0.4.19;
contract MyContract {
  address owner;
  function MyContract(){
    owner = msg.sender;
  }
}
uint propertstore;
    function set(uint x) {
       propertystore = x;
    }
    function get() constant returns (uint retVal) {
        return propertystore;
    }
function changeOwner(address _newOwner)public onlyOwner {
  ownerCandidate = _newOwner;
}
function acceptOwnership()public {
  require(msg.sender == ownerCandidate);  
  owner = ownerCandidate;
}
function sale() public payable {
        require(selling);
        require(msg.sender != owner);
        require(msg.sender == sellingTo || sellingTo == address(0));
        require(msg.value == askingPrice);
        
        
        address prevOwner = owner;
        address newOwner = msg.sender;
        uint salePrice = askingPrice;
        
        owner = newOwner;
        
   
        resetSale();
        
        prevOwner.transfer(salePrice);
        
        Transfer(now,prevOwner,newOwner,salePrice);
    }
    function Saledetail(uint _price, address _to) onlyOwner public {
        require(_to != address(this) && _to != owner);
        require(!selling);
        
        selling = true;
        
      
        sellingTo = _to;
        
        askingPrice = _price;
    }
