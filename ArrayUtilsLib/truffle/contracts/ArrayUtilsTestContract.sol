pragma solidity ^0.4.13;

import "./ArrayUtilsLib.sol";

contract ArrayUtilsTestContract {
  using ArrayUtilsLib for *;

  uint256[] array256;
  uint128[] array128;
  uint64[] array64;
  uint32[] array32;
  uint16[] array16;
  uint8[] array8;

  uint128 test1 = 5;
  uint128 test2 = 10;
  uint128 test3;

  event Print(string message, bytes32 test);

  function getSumElements256() returns (uint256){
    delete array256;
    array256.push(2);
    array256.push(10);
    array256.push(0);
    array256.push(10342);
    return array256.sumElements();
  }

  function getGetMaxMiddle256() returns (uint256){
    delete array256;
    array256.push(2);
    array256.push(0);
    array256.push(1058939);
    array256.push(0xfffff);
    return array256.getMax();
  }

  function getGetMinMiddle256() returns (uint256){
    delete array256;
    array256.push(1058939);
    array256.push(17);
    array256.push(21);
    array256.push(0xfffff);
    return array256.getMin();
  }

  function getSortedIndexOf256(uint256 value) returns (bool,uint256){
    delete array256;
    array256.push(1);
    array256.push(3);
    array256.push(4);
    array256.push(7);
    array256.push(8);
    array256.push(9);
    array256.push(1095);
    return array256.indexOf(value,true);
  }

  function getUnsortedIndexOf256(uint256 value) returns (bool,uint256) {
    delete array256;
    array256.push(7);
    array256.push(0xffff);
    array256.push(3);
    array256.push(1);
    array256.push(9);
    array256.push(1095);
    return array256.indexOf(value,false);
  }

  function getNoIndexOf256(uint256 value, bool isSorted) returns (bool,uint256) {
    delete array256;
    array256.push(1);
    array256.push(3);
    array256.push(4);
    array256.push(7);
    array256.push(9);
    array256.push(1095);
    return array256.indexOf(value,isSorted);
  }

  function getSumElements128() returns (uint128 test){
    delete array128;
    array128.push(2);
    array128.push(4);
    array128.push(6);
    array128.push(3);

    return array128.sumElements();
  }

  function getSumElements64() returns (uint64 test){
    delete array64;
    array64.push(2);
    array64.push(4);
    array64.push(6);
    array64.push(3);

    return array64.sumElements();
  }

  function getSumElements32() returns (uint32 test){
    delete array32;
    array32.push(2);
    array32.push(4);
    array32.push(6);
    array32.push(3);

    return array32.sumElements();
  }

  function getSumElements16() returns (uint16 test){
    delete array16;
    array16.push(2);
    array16.push(4);
    array16.push(6);
    array16.push(3);

    return array16.sumElements();
  }

  function getSumElements8() returns (uint8 test){
    delete array8;
    array8.push(2);
    array8.push(4);
    array8.push(6);
    array8.push(3);

    return array8.sumElements();
  }

  function getGetMaxMiddle128() returns (uint128){
    delete array128;
    array128.push(2);
    array128.push(29588383);
    array128.push(0);
    array128.push(0xfffff);


    return array128.getMax();
  }

  function getGetMaxMiddle64() returns (uint64){
    delete array64;
    array64.push(2);
    array64.push(29588);
    array64.push(0);
    array64.push(0xff);


    return array64.getMax();
  }

  function getGetMaxMiddle32() returns (uint32){
    delete array32;
    array32.push(2);
    array32.push(29588);
    array32.push(0);
    array32.push(0xff);


    return array32.getMax();
  }

  function getGetMaxMiddle16() returns (uint16){
    delete array16;
    array16.push(2);
    array16.push(29588);
    array16.push(0);
    array16.push(0xff);


    return array16.getMax();
  }

  function getGetMaxMiddle8() returns (uint8){
    delete array8;
    array8.push(2);
    array8.push(29);
    array8.push(152);
    array8.push(0xf);


    return array8.getMax();
  }

  function getGetMinMiddle128() returns (uint128){
    delete array128;
    array128.push(1058939);
    array128.push(73);
    array128.push(17);
    array128.push(0xfffff);
    return array128.getMin();
  }

  function getGetMinMiddle64() returns (uint64){
    delete array64;
    array64.push(1058939);
    array64.push(73);
    array64.push(17);
    array64.push(0xfffff);
    return array64.getMin();
  }

  function getGetMinMiddle32() returns (uint32){
    delete array32;
    array32.push(1058939);
    array32.push(73);
    array32.push(17);
    array32.push(0xfffff);
    return array32.getMin();
  }

  function getGetMinMiddle16() returns (uint16){
    delete array16;
    array16.push(10589);
    array16.push(73);
    array16.push(17);
    array16.push(0xffff);
    return array16.getMin();
  }

  function getGetMinMiddle8() returns (uint8){
    delete array8;
    array8.push(105);
    array8.push(73);
    array8.push(17);
    array8.push(0xff);
    return array8.getMin();
  }

  function getSortedIndexOf128(uint128 value) returns (bool,uint128){
    delete array128;
    array128.push(1);
    array128.push(3);
    array128.push(4);
    array128.push(7);
    array128.push(8);
    array128.push(9);
    array128.push(1095);
    return array128.indexOf(value,true);
  }

  function getUnsortedIndexOf128(uint128 value) returns (bool,uint256) {
    delete array128;
    array128.push(7);
    array128.push(0xffff);
    array128.push(3);
    array128.push(1);
    array128.push(9);
    array128.push(1095);
    return array128.indexOf(value,false);
  }

  function getNoIndexOf128(uint128 value, bool isSorted) returns (bool,uint256) {
    delete array128;
    array128.push(1);
    array128.push(3);
    array128.push(4);
    array128.push(7);
    array128.push(9);
    array128.push(1095);
    return array128.indexOf(value,isSorted);
  }

  function getHeapSort() returns (uint256[10] memory r){
    delete array256;
    array256.push(3);
    array256.push(1);
    array256.push(9);
    array256.push(7);
    array256.push(4);
    array256.push(4);
    array256.push(0xff3);
    array256.push(0);
    array256.push(1095);
    array256.push(1);
    array256.heapSort();
    for(uint256 i = 0; i<array256.length; i++){
      r[i] = array256[i];
    }
  }

}
