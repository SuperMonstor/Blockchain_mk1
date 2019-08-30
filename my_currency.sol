pragma solidity 0.5.1;

contract MyContract {
    uint256 private currencyCount = 10000;
    mapping(uint => user) public users;
    uint256 userCount = 0;
    address owner;

    struct user {
        uint id;
        string name;
        uint balance;
    }

    function addUser(uint _id, string memory _name, uint _amount) public {
        userCount += 1;
        users[_id] = user(_id, _name, _amount);
        currencyCount -= _amount;
    }
    
    function transfer(uint _id1, uint256 _amt1, uint _id2) public{
        if(users[_id1].balance > _amt1) {
            users[_id1].balance -= _amt1;
            users[_id2].balance += _amt1;
        }
    }
    
    function balance(uint _id) public returns (uint) {
        return users[_id].balance;
    }
}
