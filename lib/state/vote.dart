/**
 * Created by Mahmud Ahsan
 * https://github.com/mahmudahsan
 */

import "package:flutter/material.dart";
import "package:voting_app/models/vote.dart";
import "package:voting_app/services.dart";

class VoteState with ChangeNotifier {
  List<Vote> _voteList;
  Vote _activeVote;

  VoteState() {
    loadVoteList();
  }

  void loadVoteList() {
    _voteList = getVoteList();
    _activeVote = null;
    notifyListeners();
  }

  List<Vote> get voteList => _voteList;
  Vote get activeVote => _activeVote;

  set activeVote(newValue) {
    _activeVote = newValue;
    notifyListeners();
  }
}
