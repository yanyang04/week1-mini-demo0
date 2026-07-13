// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * Week1 Mini Demo0 极简文件哈希存证合约
 */
contract FileProof {
    // 存储 文件哈希 => 上传时间戳
    mapping(string => uint256) public fileRecord;

    /// @notice 把文件哈希存入链上
    function storeHash(string calldata fileHash) external {
        // 人工添加：防止重复存储浪费Gas
        require(fileRecord[fileHash] == 0, "该文件哈希已上链");
        fileRecord[fileHash] = block.timestamp;
    }

    /// @notice 查询文件哈希对应的存储时间
    function getUploadTime(string calldata fileHash) external view returns (uint256) {
        return fileRecord[fileHash];
    }
}
