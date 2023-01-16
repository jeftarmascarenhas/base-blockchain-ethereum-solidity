// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/** Data location
- storage: uma variável que utilizar storage significa que ela é uma variável de estado
- memory: uma variável que utilizar memory significa que só vai existe na memória
- calldata: uma variável calldata é igual a memory, mais só podemos utilziar-la em inputs/parâmetro de função.
OBS: use calldata em array, struct, mapping e string;
*/

contract StorageMemoryCalldata {
    struct MyStruct {
        uint256 id;
        string text;
    }

    uint256 ids;

    mapping(address => MyStruct) public structMapping;

    function example(uint256[] calldata arr, string calldata s)
        external
        returns (uint256)
    {
        ids++;

        // create
        structMapping[msg.sender] = MyStruct({id: ids, text: "bar"});

        // update e vai alterar o estado
        MyStruct storage myStruct = structMapping[msg.sender];
        myStruct.text = "foo";

        MyStruct memory myStructMemory = structMapping[msg.sender];
        myStructMemory.id = 2;

        return fnInternal(arr, s);
    }

    function fnInternal(uint256[] calldata y, string calldata s)
        private
        pure
        returns (uint256)
    {
        uint256 x = y[0];
        string memory s2 = s;
        return x;
    }
}
