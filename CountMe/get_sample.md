GET https://www.googleapis.com/civicinfo/v2/voterinfo?address=1600+Pennsylvania+Ave+NW%2C+Washington%2C+DC+20500&electionId=4215&officialOnly=false&key={YOUR_API_KEY}



200 OK

- Show headers -

{
 "kind": "civicinfo#voterInfoResponse",
 "election": {
  "id": "4215",
  "name": "District of Columbia Primary",
  "electionDay": "2016-06-14",
  "ocdDivisionId": "ocd-division/country:us/state:dc"
 },
 "normalizedInput": {
  "line1": "1600 pennsylvania ave nw",
  "city": "washington",
  "state": "DC",
  "zip": "20500"
 },
 "pollingLocations": [
  {
   "address": {
    "locationName": "THE SCHOOL WITHOUT WALLS",
    "line1": "2130 G ST NW",
    "city": "WASHINGTON",
    "state": "DC",
    "zip": "20037"
   },
   "notes": "",
   "pollingHours": "7 AM - 8 PM EST",
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  }
 ],
 "contests": [
  {
   "type": "PRIMARY",
   "primaryParty": "DEMOCRATIC",
   "office": "DEMOCRATIC PRESIDENTIAL PREFERENCE",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "2",
   "candidates": [
    {
     "name": "HILLARY CLINTON",
     "party": "DEMOCRATIC"
    },
    {
     "name": "WRITE-IN",
     "party": "DEMOCRATIC"
    },
    {
     "name": "BERNIE SANDERS",
     "party": "DEMOCRATIC"
    },
    {
     "name": "`ROCKY` ROQUE DE LE FUENTE",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP DELEGATE TO THE U.S. HOUSE OF REPRESENTATIVES",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "20",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "STATEHOOD GREEN",
   "office": "STG DELEGATE TO THE U.S. HOUSE OF REPRESENTATIVES",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "20",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "STATEHOOD GREEN"
    },
    {
     "name": "NATALE (LINO) STRACUZZI",
     "party": "STATEHOOD GREEN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "DEMOCRATIC",
   "office": "DEM DELEGATE TO THE U.S. HOUSE OF REPRESENTATIVES",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "20",
   "candidates": [
    {
     "name": "ELEANOR H. NORTON",
     "party": "DEMOCRATIC"
    },
    {
     "name": "WRITE-IN",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "STATEHOOD GREEN",
   "office": "STG UNITED STATES REPRESENTATIVE",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "200",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "STATEHOOD GREEN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP UNITED STATES REPRESENTATIVE",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "200",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "DEMOCRATIC",
   "office": "DEM UNITED STATES REPRESENTATIVE",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "200",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "DEMOCRATIC"
    },
    {
     "name": "FRANKLIN GARCIA",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "STATEHOOD GREEN",
   "office": "STG AT-LARGE MEMBER OF THE COUNCIL",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "350",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "STATEHOOD GREEN"
    },
    {
     "name": "G. LEE AIKEN",
     "party": "STATEHOOD GREEN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "DEMOCRATIC",
   "office": "DEM AT-LARGE MEMBER OF THE COUNCIL",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "350",
   "candidates": [
    {
     "name": "ROBERT WHITE",
     "party": "DEMOCRATIC"
    },
    {
     "name": "VINCENT ORANGE",
     "party": "DEMOCRATIC"
    },
    {
     "name": "DAVID GARBER",
     "party": "DEMOCRATIC"
    },
    {
     "name": "WRITE-IN",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP AT-LARGE MEMBER OF THE COUNCIL",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "350",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "REPUBLICAN"
    },
    {
     "name": "CAROLINA CELNIK",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP MEMBER OF THE COUNCIL WARD TWO",
   "district": {
    "name": "DISTRICT OF COLUMBIA WARD 2"
   },
   "ballotPlacement": "355",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "STATEHOOD GREEN",
   "office": "MEMBER OF THE COUNCIL WARD TWO",
   "district": {
    "name": "DISTRICT OF COLUMBIA WARD 2"
   },
   "ballotPlacement": "355",
   "candidates": [
    {
     "name": "WRITE-IN",
     "party": "STATEHOOD GREEN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "DEMOCRATIC",
   "office": "DEM MEMBER OF THE COUNCIL WARD TWO",
   "district": {
    "name": "DISTRICT OF COLUMBIA WARD 2"
   },
   "ballotPlacement": "355",
   "candidates": [
    {
     "name": "JACK EVANS",
     "party": "DEMOCRATIC"
    },
    {
     "name": "WRITE-IN",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP NATIONAL COMMITTEEWOMAN",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "810",
   "candidates": [
    {
     "name": "JILL HOMAN",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP NATIONAL COMMITTEEMAN",
   "district": {
    "name": "DISTRICT OF COLUMBIA"
   },
   "ballotPlacement": "811",
   "candidates": [
    {
     "name": "BOB KABEL",
     "party": "DEMOCRATIC"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  },
  {
   "type": "PRIMARY",
   "primaryParty": "REPUBLICAN",
   "office": "REP CHAIRPERSON DC REPUBLICAN COMMITTEE WARD TWO",
   "district": {
    "name": "DISTRICT OF COLUMBIA WARD 2"
   },
   "ballotPlacement": "4012",
   "candidates": [
    {
     "name": "GARY P. KRAISS JR",
     "party": "REPUBLICAN"
    }
   ],
   "sources": [
    {
     "name": "Voting Information Project",
     "official": true
    }
   ]
  }
 ],
 "state": [
  {
   "name": "District of Columbia",
   "electionAdministrationBody": {
    "name": "District of Columbia Board of Elections",
    "electionInfoUrl": "https://www.dcboee.org/voter_info/register_to_vote/ovr_step1.asp",
    "electionRegistrationUrl": "https://www.dcboee.org/voter_info/register_to_vote/ovr_step1.asp",
    "electionRegistrationConfirmationUrl": "https://www.dcboee.org/voter_info/reg_status/",
    "absenteeVotingInfoUrl": "https://www.dcboee.org/voter_info/absentee_ballot/ab_step1.asp",
    "votingLocationFinderUrl": "http://www.dcboee.org/voter_info/find_pollingplace/index.asp",
    "ballotInfoUrl": "http://www.dcboee.org/election_info/election_year2012/",
    "electionRulesUrl": "http://www.dcboee.org/regulations/election_laws/index.asp",
    "correspondenceAddress": {
     "line1": "441 4th St Nw Ste 250",
     "city": "Washington",
     "state": "District of Columbia",
     "zip": "20001-2714"
    }
   },
   "local_jurisdiction": {
    "name": "WASHINGTON",
    "electionAdministrationBody": {
     "name": "DC Board of Elections",
     "electionInfoUrl": "http://www.dcboee.org",
     "electionRegistrationUrl": "http://www.dcboee.org",
     "electionRegistrationConfirmationUrl": "https://www.dcboee.org/voter_info/reg_status/",
     "absenteeVotingInfoUrl": "https://www.vote4dc.com/ApplyInstructions/Absentee",
     "votingLocationFinderUrl": "https://www.vote4dc.com/SearchElection/SearchByAddress",
     "hoursOfOperation": "8:15 AM - 4:45 PM",
     "correspondenceAddress": {
      "locationName": "One Judiciary Square",
      "line1": "411 4th Street, N.W.",
      "line2": "Suite 250 N",
      "city": "Washington",
      "state": "DC",
      "zip": "20001"
     },
     "physicalAddress": {
      "locationName": "One Judiciary Square",
      "line1": "441 4th Street N.W.",
      "line2": "Suite 250 N",
      "city": "Washington",
      "state": "DC",
      "zip": "20001"
     }
    },
    "sources": [
     {
      "name": "Voting Information Project",
      "official": true
     }
    ]
   },
   "sources": [
    {
     "name": "TurboVote",
     "official": false
    }
   ]
  }
 ]
}
