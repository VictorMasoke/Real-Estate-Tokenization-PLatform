const { expect } = require('chai');
const { ethers } = require('hardhat');

const tokens = (n) => {
    return ethers.utils.parseUnits(n.toString(), 'ether')
}

describe('Escrow', () => {
    it('Saves the address', async () => {
        const realEstate = await ethers.getContractFactory("RealEstate");
        realEstate = await realEstate.deploy();

        console.log("RealEstate deployed to:", realEstate.address);

        //await realEstate.deployed();
    })
})
