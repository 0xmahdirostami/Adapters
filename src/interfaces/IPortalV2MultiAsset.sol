// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.19;

interface IPortalV2MultiAsset {
    function stake(uint256 _amount) external payable;

    function unstake(uint256 _amount) external;

    function mintNFTposition(address _recipient) external;

    function buyPortalEnergy(address _recipient, uint256 _amountInputPSM, uint256 _minReceived, uint256 _deadline)
        external;

    function sellPortalEnergy(address _recipient, uint256 _amountInputPE, uint256 _minReceived, uint256 _deadline)
        external;

    function quoteBuyPortalEnergy(uint256 _amountInputPSM) external view returns (uint256 amountReceived);

    function quoteSellPortalEnergy(uint256 _amountInputPE) external view returns (uint256 amountReceived);

    function mintPortalEnergyToken(address _recipient, uint256 _amount) external;

    function burnPortalEnergyToken(address _recipient, uint256 _amount) external;

    function maxLockDuration() external view returns (uint256 maxLockDuration);

    function portalEnergyToken() external view returns (address portalEnergyToken);

    function PRINCIPAL_TOKEN_ADDRESS() external view returns (address PRINCIPAL_TOKEN_ADDRESS);

    function DECIMALS_ADJUSTMENT() external view returns (uint256);

    function VIRTUAL_LP() external view returns (address);
}
