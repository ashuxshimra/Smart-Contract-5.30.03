//SPDX-License-Identifier: MIT
//in the FundMe sc you saw how money was sent to sc by triggering fund function and that way the details of the funder was managed and known
//but what would happen if the money is sent to the sc without triggering the fund function then the known of the funder cannot be kept and thus we need to have a track so in such case when we are sending the amount money to sc without triggering fund function ()check page 25 to see how its done
//so if only money is sent to sc without triggering and function then receive() function receives it as shown in page 25
//similarly if along with money some data is also sent then fallback function is used
pragma solidity ^0.8.7;
    contract FallBackExa{
 uint256 public result;
 receive () external payable { //receive is a special function and is always with external payable with no 'function' keyword
     result=1;
 }
fallback() external payable{
   result=2; 
}

    }