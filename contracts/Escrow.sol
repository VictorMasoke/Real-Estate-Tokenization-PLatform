//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IERC721 {
    function transferFrom(
        address _from,
        address _to,
        uint256 _id
    ) external;
}

contract Escrow {
    address public buyer;
    address payable public seller;
    address public lender;
    address public inspector;
    address public nftAddress;

    uint256 public tokenId;
    uint256 public price;

    constructor(
        address _buyer,
        address payable _seller,
        address _lender,
        address _inspector,
        address _nftAddress
    ) {
        buyer = _buyer;
        seller = _seller;
        lender = _lender;
        inspector = _inspector;
        nftAddress = _nftAddress;
    }

    // function deposit() public payable {
    //     require(msg.sender == buyer, "Only buyer can deposit");
    //     require(msg.value == price, "Incorrect deposit amount");
    // }

    // function release() public {
    //     require(msg.sender == buyer, "Only buyer can release funds");
    //     IERC721(realEstateContract).transferFrom(seller, buyer, tokenId);
    //     payable(seller).transfer(price);
    // }
}
