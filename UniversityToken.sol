// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AstanaITAbzhapparovaGSE2331Token is ERC20, Ownable {
    // Конструктор, который задает параметры токена и владельца
    constructor() ERC20("AstanaITAbzhapparovaGSE2331Token", "AITAGSE2331") Ownable(msg.sender) {
        _mint(msg.sender, 2000 * 10 ** decimals()); // Начальный объем эмиссии токенов (2000 токенов)
    }

    // Функция для получения времени последней транзакции
    function getLastTransactionTimestamp() public view returns (string memory) {
        uint256 blockTimestamp = block.timestamp;  // Получаем метку времени последнего блока
        return _timestampToString(blockTimestamp);
    }

    // Функция для получения адреса отправителя транзакции
    function getTransactionSender() public view returns (address) {
        return msg.sender;
    }

    // Функция для получения адреса получателя транзакции
    function getTransactionReceiver(address to) public pure returns (address) {
        return to;
    }

    // Вспомогательная функция для преобразования времени в строку
    function _timestampToString(uint256 timestamp) private pure returns (string memory) {
        uint256 secondsPart = timestamp % 60;  // Получаем секунды
        uint256 minutesPart = (timestamp / 60) % 60; // Получаем минуты
        uint256 hoursPart = (timestamp / 3600) % 24; // Получаем часы
        uint256 dayPart = (timestamp / 86400) % 31;  // Получаем дни
        uint256 monthPart = (timestamp / 2628000) % 12; // Получаем месяцы
        uint256 yearPart = timestamp / 31536000;  // Получаем года

        return string(abi.encodePacked(
            uint2str(yearPart), "-", uint2str(monthPart), "-", uint2str(dayPart), " ",
            uint2str(hoursPart), ":", uint2str(minutesPart), ":", uint2str(secondsPart)
        ));
    }

    // Функция для преобразования числа в строку
    function uint2str(uint256 _i) private pure returns (string memory str) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint256 k = len;
        j = _i;
        while (j != 0) {
            bstr[--k] = bytes1(uint8(48 + j % 10));
            j /= 10;
        }
        str = string(bstr);
    }
}