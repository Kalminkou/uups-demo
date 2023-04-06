
const { ethers, upgrades } = require('hardhat')

const PROXY = "0x4fB11eB7Dd2CbB6dC90be2BdD1a228bbf64F83c5"

async function main() {

  const PizzaV2 = await ethers.getContractFactory("PizzaV2");

  console.log("Upgrading Pizza ...")

  await upgrades.upgradeProxy(PROXY, PizzaV2,)

  console.log(
    `Upgrade Successfull!!!`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
