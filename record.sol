// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface ComplaintInterface {
    function Complaints(uint256)
        external
        view
        returns (
            uint256 id,
            address complaintRegisteredBy,
            string memory title,
            string memory description,
            string memory approvalRemark,
            string memory resolutionRemark,
            bool isApproved,
            bool isResolved,
            bool exists
        );
}

contract ComplaintFetcher {
    ComplaintInterface complaintContract;

    constructor(address _complaintContractAddress) {
        complaintContract = ComplaintInterface(_complaintContractAddress);
    }

    function getComplaint(uint256 _id)
        external
        view
        returns (
            uint256 id,
            address complaintRegisteredBy,
            string memory title,
            string memory description,
            string memory approvalRemark,
            string memory resolutionRemark,
            bool isApproved,
            bool isResolved,
            bool exists
        )
    {
        return complaintContract.Complaints(_id);
    }
}
