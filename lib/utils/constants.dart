import 'package:flutter/material.dart';

import '../utils/enums.dart';

const kPrimaryColor = Color(0xFF00E0C8);
const kSecondaryColor = Color(0xFF3A364D);
const kDividerColor1 = Color(0xFF01ADDE);
const kDividerColor2 = Color(0xFF00C7BA);

//* Map of <Enum, List<double>>
//* Used for specifying the location of cards present in [CardsView]
//* First value of the list is the offset value from the left side of container
//* Second value of the list is the offset value from the top of container
//* Offset value is indicated with respect to the top-left corner of container

const kPositionMap = {
  TranslucentCardLocation.front: [90.0, 110.0],
  TranslucentCardLocation.back: [30.0, 80.0],
};
