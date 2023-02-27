const VldPermit = artifacts.require("VldPermit");
// async function to deploy the contract
module.exports = async function (deployer) {
    // check if the contract is already deployed
    if (VldPermit.isDeployed()) {
        return;
    }
    // deploy the contract
    await deployer.deploy(VldPermit);
};