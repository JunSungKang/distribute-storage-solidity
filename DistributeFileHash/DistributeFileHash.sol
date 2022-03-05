// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DistributeFileHash {
    struct File {
        bytes32 []sourceIp;
        bytes32 []fileHash;
    }

    mapping (bytes32 => File) myMapping;

    // get all file info
    function getFileInfo(bytes32 idx) public view returns (bytes32[] memory _sourceIp, bytes32[] memory _fileHash) {
        _sourceIp = myMapping[idx].sourceIp;
        _fileHash = myMapping[idx].fileHash;
    }

    // get all source ip value
    function getSourceIp(bytes32 idx) public view returns (bytes32[] memory _sourceIp) {
        _sourceIp = myMapping[idx].sourceIp;
    }

    // get all file hash
    function getFileHash(bytes32 idx) public view returns (bytes32[] memory _fileHash) {
        _fileHash = myMapping[idx].fileHash;
    }

    // set file save
    function setFileHashValue(bytes32 idx, bytes32[] memory _sourceIp, bytes32[] memory _fileHash) public {
        myMapping[idx].sourceIp = _sourceIp;
        myMapping[idx].fileHash = _fileHash;
    }
}
