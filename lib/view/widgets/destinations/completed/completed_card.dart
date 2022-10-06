import 'package:flutter/material.dart';
import 'package:promdifarm_app/core/const/color.dart';
import 'package:promdifarm_app/data/models/parcel/parcel.model.dart';

class CompletedCard extends StatelessWidget {
  final Parcel parcel;
  const CompletedCard(this.parcel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: parseStatus(parcel.status),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Item Information',
                      style: TextStyle(
                        color: TEXT_LIGHT,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    '${parcel.refNum}',
                    style: TextStyle(
                      color: TEXT_LIGHT,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Payment Type : ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: NEUTRAL_PRIMARY_NORMAL,
                        ),
                      ),
                      Text(
                        '${parcel.payment}',
                        style: TextStyle(color: NEUTRAL_PRIMARY_NORMAL),
                      ),
                      Spacer(),
                      Text(
                        'Fee: ₱ ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: NEUTRAL_PRIMARY_NORMAL,
                        ),
                      ),
                      Text(
                        '${parcel.fee}',
                        style: TextStyle(color: NEUTRAL_PRIMARY_NORMAL),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Weight: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: NEUTRAL_PRIMARY_NORMAL),
                      ),
                      Text(
                        '${parcel.weight}',
                        style: TextStyle(color: NEUTRAL_PRIMARY_NORMAL),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Row(
                      children: [
                        Text(
                          "Sender :",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: ACCENT,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' ${parcel.tenant.name} ',
                          style: TextStyle(
                            color: NEUTRAL_PRIMARY_NORMAL,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Number :",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: NEUTRAL_PRIMARY_DARK,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' ${parcel.tenant.phoneNumber} ',
                          style: TextStyle(
                            color: NEUTRAL_PRIMARY_NORMAL,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: ACCENT,
                          size: 24.0,
                        ),
                        Expanded(
                          child: Text(
                            ' ${parcel.pickupAddress.address.fullAddress}',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: NEUTRAL_PRIMARY_NORMAL,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                    child: Row(
                      children: [
                        Text(
                          "Reciever :",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: SECONDARY,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' ${parcel.consignee.firstName} ${parcel.consignee.lastName}',
                          style: TextStyle(
                            color: NEUTRAL_PRIMARY_NORMAL,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Number :",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: NEUTRAL_PRIMARY_NORMAL,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' ${parcel.consignee.phoneNumber}',
                          style: TextStyle(
                            color: NEUTRAL_PRIMARY_NORMAL,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: SECONDARY,
                          size: 24.0,
                        ),
                        Expanded(
                          child: Text(
                            ' ${parcel.pickupAddress.address.fullAddress}',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: NEUTRAL_PRIMARY_NORMAL,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color parseStatus(String status) {
    if (status == 'Pickup') {
      return SECONDARY;
    } else if (status == 'NotDelivered') {
      return RED;
    } else if (status == 'Delivered') {
      return SECONDARY;
    } else if (status == 'ForDelivery') {
      return SECONDARY;
    } else if (status == 'Arrived') {
      return SECONDARY;
    }

    return SECONDARY;
  }
}
