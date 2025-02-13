import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract MyContract {
    using SafeMath for uint256;

    mapping(address => uint256) public balances;

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        balances[msg.sender] = balances[msg.sender].sub(amount);
        balances[recipient] = balances[recipient].add(amount);
        return true;
    }
}