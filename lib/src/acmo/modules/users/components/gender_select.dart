import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import '../../../../gen/assets.gen.dart';

class AcmoComponentGenderSelect extends StatefulWidget {
  final Function(int) onChanged;

  const AcmoComponentGenderSelect({super.key, required this.onChanged});
  @override
  _AcmoComponentGenderSelectState createState() =>
      _AcmoComponentGenderSelectState();
}

class _AcmoComponentGenderSelectState extends State<AcmoComponentGenderSelect> {
  List<Gender> genders = <Gender>[];

  @override
  void initState() {
    super.initState();
    genders.add(Gender(t.userProfile.male, null, false, maleImage: true));
    genders.add(Gender(t.userProfile.female, null, false, femaleImage: true));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: genders.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (mounted) {
                setState(() {
                  for (var gender in genders) {
                    gender.isSelected = false;
                  }
                  genders[index].isSelected = true;
                });
              }

              widget.onChanged(index == 0 ? 1 : 2);
            },
            child: GenderListItem(genders[index]),
          );
        });
  }
}

class GenderListItem extends StatelessWidget {
  final Gender _gender;

  const GenderListItem(this._gender, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _gender.isSelected
            ? Theme.of(context).colorScheme.secondary
            : Colors.white,
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _gender.maleImage
                  ? Assets.icons.male.image(
                color: _gender.isSelected ? Colors.white : Colors.grey,
                height: 40,
              )
                  : _gender.femaleImage
                  ? Assets.icons.female.image(
                color: _gender.isSelected ? Colors.white : Colors.grey,
                height: 40,
              )
                  : Icon(
                _gender.icon,
                color: _gender.isSelected ? Colors.white : Colors.grey,
                size: 40,
              ),
              const SizedBox(height: 10),
              Text(
                _gender.name,
                style: TextStyle(
                    color: _gender.isSelected ? Colors.white : Colors.grey),
              )
            ],
          ),
        ));
  }
}

class Gender {
  String name;
  IconData? icon;
  bool isSelected;
  bool maleImage;
  bool femaleImage;

  Gender(this.name, this.icon, this.isSelected, {this.maleImage = false, this.femaleImage = false});
}
