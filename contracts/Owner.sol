// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract InitializeContract {
    //owner of the contract
    address public owner;

    struct PersonalInfo {
        bytes32 name;
        bytes32 dob;
        bytes32 nationality;
    }

    struct Contact {
        bytes32 phoneNumber;
        bytes32 mailingAddress;
        bytes32 city;
        bytes32 country;
    }
    struct Education {
        bytes32 universityName;
        bytes32 highSchoolName;
        bytes2 highSchoolGrade;
        bytes32 gpa;
        uint256 noOfRetakes;
        uint8 pendingUnits;
    }
    struct Financial {
        bytes32 bankName;
    }

    PersonalInfo internal personal;
    Contact internal contact;
    Education internal education;
    Financial internal finance;
    address public affiliation;
    mapping(uint256 => PersonalInfo) public info;

    constructor(
        bytes32 _name,
        bytes32 _dob,
        bytes32 _nationality,
        address _affiliation
    ) {
        owner = msg.sender;
        personal = PersonalInfo(_name, _dob, _nationality);
        affiliation = _affiliation;
    }

    function getPersonalInfo() public view returns (PersonalInfo memory) {
        return personal;
    }

    function setPersonalInfo(
        bytes32 _name,
        bytes32 _dob,
        bytes32 _nationality
    ) public {
        personal = PersonalInfo(_name, _dob, _nationality);
    }

    function getContact() public view returns (Contact memory) {
        return contact;
    }

    function setContact(
        bytes32 _phoneNumber,
        bytes32 _mailingAddress,
        bytes32 _city,
        bytes32 _country
    ) public {
        contact = Contact(_phoneNumber, _mailingAddress, _city, _country);
    }

    function getEducation() public view returns (Education memory) {
        return education;
    }

    function setContact(
        bytes32 _universityName,
        bytes32 _highSchoolName,
        bytes2 _highSchoolGrade,
        bytes32 _gpa,
        uint256 _noOfRetakes,
        uint8 _pendingUnits
    ) public {
        education = Education(
            _universityName,
            _highSchoolName,
            _highSchoolGrade,
            _gpa,
            _noOfRetakes,
            _pendingUnits
        );
    }
    
    function ownerAddress() public view returns(address){
        return address(this);
    }
}
