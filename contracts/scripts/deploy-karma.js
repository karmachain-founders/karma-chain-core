async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contract with account:", deployer.address);

  const KarmaScore = await ethers.getContractFactory("KarmaScore");
  const karma = await KarmaScore.deploy();
  await karma.deployed();

  console.log("KarmaScore deployed to:", karma.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
