const { expect } = require('chai');
const { ethers } = require('hardhat');

const tokens = (n) => {
    return ethers.utils.parseUnits(n.toString(), 'ether')
}

describe('Escrow', () => {
    it('Saves the address', async () => {
        const [buyer, seller, inspector] = await ethers.getSigners();
    })
})
