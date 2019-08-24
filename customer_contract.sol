pragma solidity ^0.5.0;
contract test3 {
    
    struct customer {
        string name;
        string phno;
        string email;
    }
     
    mapping(string => customer) c;
    
    constructor() public{
        //c['email'] = ('sudarshan', '23492535', 'ejadsfghag');
    }
    
   
    
    function addCustomer(string memory _name, string memory _phone, string memory _email) public {
        c[_email] = customer(_name, _phone, _email);
    }
    
    function getCustomer(string memory _email) public returns (address) {
        return msg.sender;
    }
}
