 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 验证签名
// 四步骤
// 1 将消息签名
// 2 将消息哈希值
// 3 再把消息和私钥进行签名 （是在链下完成）
// 4 恢复签名
//      方法 ecrecover（hash（message），signature == signer）
//      方法 ecrecover（哈希之后的消息原文，链下的签名）

contract VerifySig {
    function verify(address _signer,string memory _message,bytes memory _sig) external pure returns(bool){
       bytes32 messageHash = getMessageHash(_message);
       bytes32 ethSignedMessageHash = getEthSignedMessageHash(messageHash);

       return recover(ethSignedMessageHash,_sig) == _signer;
    }

    // 第二部
    function getMessageHash(string memory _message)public pure returns(bytes32){
        return keccak256(abi.encodePacked(_message));
    }
    
    // 第三部
    function getEthSignedMessageHash(bytes32 _messageHash)public pure returns(bytes32){
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32",_messageHash));
    }

    // 第四部：恢复函数
    function recover(bytes32 _ethSignedMessageHash,bytes memory _sig)public pure returns(address){
       (bytes32 r,bytes32 s,uint8 v)=_split(_sig);
       return ecrecover(_ethSignedMessageHash,v,r,s);
    }

        function _split(bytes memory _sig)internal pure returns(bytes32 r,bytes32 s,uint8 v){
            require(_sig.length == 65,"invalid signature length");
        
        // 内敛汇编的方式进行分割
            assembly {
                r:=mload(add( _sig,32))
                s:= mload(add( _sig,64))
                v:= byte(0,mload(add( _sig,96)))
        }
    }
}