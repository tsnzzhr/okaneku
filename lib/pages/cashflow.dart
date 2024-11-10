import 'package:flutter/material.dart';

class CashflowRecord {
  final double amount;
  final String purpose;
  final bool isIncome;

  CashflowRecord(
      {required this.amount, required this.purpose, required this.isIncome});
}

class Cashflow extends StatefulWidget {
  const Cashflow({super.key});

  @override
  State<Cashflow> createState() => _CashflowState();
}

class _CashflowState extends State<Cashflow> {
  List<CashflowRecord> cashflowRecords = [];

  final TextEditingController amountController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();
  bool _isIncome = false;

  void addCashflow() {
    final double amount = double.tryParse(amountController.text) ?? 0;
    final String purpose = purposeController.text;

    if (amount > 0 && purpose.isNotEmpty) {
      setState(() {
        cashflowRecords.add(CashflowRecord(
            amount: amount, purpose: purpose, isIncome: _isIncome));
      });
      amountController.clear();
      purposeController.clear();
      setState(() {
        _isIncome = false;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fill the voids please!:)')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cashflow Records',
            style: TextStyle(
                color: Color.fromARGB(255, 191, 87, 71),
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                fontFamily: 'Poppins')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Harga/Nominal (Rp)',
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 191, 87, 71)),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 191, 87, 71), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: purposeController,
              decoration: const InputDecoration(
                labelText: 'Keterangan',
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 191, 87, 71)),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 191, 87, 71), width: 2),
                ),
              ),
            ),
            Row(
              children: [
                const Text('Tipe Cashflow: ', style: TextStyle(fontSize: 16)),
                Radio<bool>(
                  value: true,
                  groupValue: _isIncome,
                  onChanged: (value) {
                    setState(() {
                      _isIncome = value!;
                    });
                  },
                ),
                const Text('Income'),
                Radio<bool>(
                  value: false,
                  groupValue: _isIncome,
                  onChanged: (value) {
                    setState(() {
                      _isIncome = value!;
                    });
                  },
                ),
                const Text('Outcome'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: addCashflow,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 191, 87, 71),
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                shadowColor: Colors.grey,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Rekam Cashflow',
                style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cashflowRecords.length,
                itemBuilder: (context, index) {
                  final cashflow = cashflowRecords[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 3.0,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: Text(
                        '\Rp. ${cashflow.amount.toStringAsFixed(0)}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 191, 87, 71)),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Keterangan : ${cashflow.purpose}'),
                          Text(
                            cashflow.isIncome ? "Income" : "Outcome",
                            style: TextStyle(
                                color: cashflow.isIncome
                                    ? Color.fromARGB(255, 50, 115, 53)
                                    : Color.fromARGB(
                                        255, 203, 153, 51), // More conditions
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
