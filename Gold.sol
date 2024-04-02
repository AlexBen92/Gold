pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract BACKGOLD is ERC20, Ownable, ERC20Permit {
    AggregatorV3Interface internal goldPriceFeed;
    uint256 public constant GOLD_PRECISION = 1e18;

    constructor(address initialOwner, address _goldPriceFeed)
        ERC20("BACKGOLD", "BG")
        Ownable(initialOwner)
        ERC20Permit("BACKGOLD")
    {
        goldPriceFeed = AggregatorV3Interface(_goldPriceFeed);
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        uint256 tokenAmount = amount * GOLD_PRECISION / getGoldPrice();
        _mint(to, tokenAmount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
        // Envoyer (amount * getGoldPrice() / GOLD_PRECISION) d'or à l'appelant
    }

    function getGoldPrice() public view returns (uint256) {
        (, int256 price, , , ) = goldPriceFeed.latestRoundData();
        return uint256(price);
    }
}