import 'package:flutter/material.dart';
import 'package:hisobcha/core/floor/entity/planning.dart';
import 'package:hisobcha/core/text_fields/custom_text_field.dart';
import 'package:hisobcha/core/theme/app_text_style.dart';
import 'package:hisobcha/data_source/local_source.dart';

class AddDialog extends StatelessWidget {
  final Planning? value;

  AddDialog({Key? key, this.value}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _localSource = LocalSource.getInstance();
    _nameController.text = value?.name ?? '';
    _priceController.text = value?.price ?? '';
    _fromDateController.text = value?.fromDate ?? '';
    _endDateController.text = value?.endDate ?? '';
    _statusController.text = value?.status?.toString() ?? '';
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Add new future',
                  style: AppTextStyles.nothing,
                ),
                if (value != null)
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _localSource.removePlanning(value!);
                    },
                    child: const Text('Delete'),
                  ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              topMargin: 16,
              labelText: 'Name',
              controller: _nameController,
              keyboardType: TextInputType.multiline,
              isResizable: true,
            ),
            CustomTextField(
              topMargin: 16,
              labelText: 'Price',
              controller: _priceController,
            ),
            CustomTextField(
              topMargin: 16,
              labelText: 'From date',
              controller: _fromDateController,
            ),
            CustomTextField(
              topMargin: 16,
              labelText: 'End date',
              controller: _endDateController,
            ),
            CustomTextField(
              labelText: 'Status',
              topMargin: 16,
              controller: _statusController,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      value != null
                          ? _localSource.updatePlanning(
                              Planning(
                                id: value?.id,
                                name: _nameController.text,
                                price: _priceController.text,
                                fromDate: _fromDateController.text,
                                endDate: _endDateController.text,
                                status: int.parse(_statusController.text),
                              ),
                            )
                          : _localSource.insertPlanning(
                              Planning(
                                name: _nameController.text,
                                price: _priceController.text,
                                fromDate: _fromDateController.text,
                                endDate: _endDateController.text,
                                status: _statusController.text.isNotEmpty
                                    ? int.parse(_statusController.text)
                                    : null,
                              ),
                            );
                    },
                    child: const Text('Save'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
