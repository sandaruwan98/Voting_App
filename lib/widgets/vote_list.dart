import 'dart:js';

/**
 * Created by Mahmud Ahsan
 * https://github.com/mahmudahsan
 */
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:flutter_firebase_vote/state/vote.dart';
import "package:flutter_firebase_vote/models/vote.dart";

import '../state/vote.dart';

class VoteList extends StatelessWidget {
  // String selectedVoteId = Provider.of<VoteState>(context);

  @override
  Widget build(BuildContext context) {
    Function alternateColor = getAlternate(start: 0);
    String selectedVoteId =
        Provider.of<VoteState>(context).activeVote?.voteId ?? '';

    return Consumer<VoteState>(
      builder: (context, voteState, child) {
        return Column(
          children: <Widget>[
            for (Vote vote in voteState.voteList)
              Card(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      vote.voteTitle,
                      style: TextStyle(
                        fontSize: 18,
                        color: selectedVoteId == vote.voteId
                            ? Colors.white
                            : Colors.black,
                        fontWeight: selectedVoteId == vote.voteId
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  selected: selectedVoteId == vote.voteId ? true : false,
                  onTap: () {
                    selectedVoteId = vote.voteId;
                    Provider.of<VoteState>(context).activeVote = vote;
                  },
                ),
                color:
                    selectedVoteId == vote.voteId ? Colors.white : Colors.blue,
              ),
          ],
        );
      },
    );
  }

  Function getAlternate({int start = 0}) {
    int indexNum = start;

    Color getColor() {
      Color color = Colors.teal[100];

      if (indexNum % 2 == 0) {
        color = Colors.blueAccent[100];
      }
      ++indexNum;
      return color;
    }

    return getColor;
  }
}
