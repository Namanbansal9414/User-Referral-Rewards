pragma solidity ^0.8.0;

contract ReferralRewards {
    mapping(address => uint256) public rewards;
    mapping(address => bool) public hasReferred;
    address public owner = msg.sender;
    uint256 public rewardAmount = 100; // Fixed token reward

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function refer(address _referee) public {
        require(_referee != address(0), "Invalid referee");
        require(!hasReferred[msg.sender], "Already referred");
        
        hasReferred[msg.sender] = true;
        rewards[msg.sender] += rewardAmount;
    }

    function updateReward(uint256 _newReward) public onlyOwner {
        rewardAmount = _newReward;
    }
}
