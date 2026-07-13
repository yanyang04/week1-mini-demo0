const hre = require("hardhat");

async function main() {
  // 部署合约
  const FileProof = await hre.ethers.getContractFactory("FileProof");
  const fileProof = await FileProof.deploy();
  await fileProof.deployed();

  console.log("FileProof 合约部署地址：", fileProof.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
