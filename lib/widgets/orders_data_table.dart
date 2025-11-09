import 'package:flutter/material.dart';

import 'app_scroll_bar.dart';

class OrdersDataTable extends StatelessWidget {
  const OrdersDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController verticalController = ScrollController();
    final ScrollController horizontalController = ScrollController();

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 200,
      ),
      child: AppScrollBar(
        controller: verticalController,
        child: SingleChildScrollView(
          controller: verticalController,
          scrollDirection: Axis.vertical,
          child: AppScrollBar(
            controller: horizontalController,
            child: SingleChildScrollView(
              controller: horizontalController,
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
                columns: _buildCenteredColumns(),
                rows: _buildCenteredRows(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _buildCenteredColumns() {
    return [
          'ID',
          'Order Status',
          'Delivery Date',
          'Courier Type',
          'Discounts',
          'Delivery mount',
          'Order amount',
        ]
        .map(
          (title) => DataColumn(
            label: SizedBox(
              width: title == 'ID' ? 30 : 110,
              child: Center(child: Text(title)),
            ),
          ),
        )
        .toList();
  }

  List<DataRow> _buildCenteredRows() {
    final data = [
      [
        '443',
        'Delivered',
        '2024-01-10 9-15',
        'Express',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '234',
        'Sending',
        '2024-01-11 9-15',
        'Overnight',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '576',
        'Rejected',
        '2024-01-12 9-15',
        'Standard',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '865',
        'Rejected',
        '2024-01-13 9-15',
        'Standard',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '266',
        'Delivered',
        '2024-01-14 9-15',
        'Express',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '578',
        'Sending',
        '2024-01-15 9-15',
        'Overnight',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '375',
        'Rejected',
        '2024-01-16 9-15',
        'Standard',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '475',
        'Delivered',
        '2024-01-17 9-15',
        'Express',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '267',
        'Sending',
        '2024-01-18 9-15',
        'Overnight',
        '\$25',
        '\$10',
        '\$225',
      ],
      [
        '443',
        'Rejected',
        '2024-01-19 9-15',
        'Standard',
        '\$25',
        '\$10',
        '\$225',
      ],
    ];

    return data
        .map(
          (rowData) => DataRow(
            cells:
                rowData
                    .map((cellData) => DataCell(Center(child: Text(cellData))))
                    .toList(),
          ),
        )
        .toList();
  }
}
