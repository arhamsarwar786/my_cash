import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cash/Utils/constant.dart';
import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/models/loan_status_model.dart';
import 'package:my_cash/view/status%20checker/widgets.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<LoanStatusModel>? details;
  getLoanStatus() async {

    print(GlobalState.userDetails!);
    if (GlobalState.userDetails!.cnic == null) {
      details = addCNICDialog(context);
    } else {
      details =
          await APIManager().getLoadStatus(cnic: GlobalState.userDetails!.cnic);

      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    getLoanStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primayColor,
        title: Text("Loan Status"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(
            "Applied LOAN Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          details == null
              ? SizedBox(
                  height: 300,
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
              : details!.isEmpty
                  ? Center(child: Text("No Request"))
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: details!.length,
                      itemBuilder: (context, index) {
                        LoanStatusModel data = details![index];
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Card(
                            child: Column(
                              children: [
                                RowShow(
                                  title: "Package Name",
                                  value: data.packageName,
                                ),
                                RowShow(
                                  title: "Package Amount",
                                  value: data.amount,
                                ),
                                RowShow(
                                  title: "CNIC",
                                  value: data.userCnic,
                                ),
                                RowShow(
                                  title: "Name",
                                  value: data.userName,
                                ),
                                RowShow(
                                  title: "Interest",
                                  value: data.interestAmount,
                                ),
                                RowShow(
                                  title: "Duration",
                                  value: data.duration,
                                ),
                                StatusViewer(
                                  title: "Status",
                                  value: data.status,
                                ),
                              ],
                            ),
                          ),
                        );
                      })
        ],
      ),
    );
  }
}
