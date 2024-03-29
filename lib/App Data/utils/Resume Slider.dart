// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import '../widgets/global/MediaQuery/size.dart';

////// Resume 1 //////
class Resume1CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final double width;

  const Resume1CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.width,
  });

  @override
  _Resume1CustomSliderState createState() => _Resume1CustomSliderState();
}

class _Resume1CustomSliderState extends State<Resume1CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        // width: double.infinity,
        height: 20.0,
        decoration: BoxDecoration(
          // border:  Border.all(
          color: const Color(0xFFCCCCCC),
          borderRadius: BorderRadius.circular(15.0),
          //     // color: Colors.black,
          //     width: 2
          // ),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 20.0,
              decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 2 //////
class Resume2CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final double width;

  const Resume2CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.width,
  });

  @override
  _Resume2CustomSliderState createState() => _Resume2CustomSliderState();
}

class _Resume2CustomSliderState extends State<Resume2CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        // width: double.infinity,
        height: 10.0,
        decoration: BoxDecoration(
          // border:  Border.all(
          color: const Color(0xFFCCCCCC),
          borderRadius: BorderRadius.circular(15.0),
          //     // color: Colors.black,
          //     width: 2
          // ),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 10.0,
              decoration: BoxDecoration(
                color: const Color(0xFF333333),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 3 //////
class Resume3CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final String color;
  final double width;

  const Resume3CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.color,
    required this.width,
  });

  @override
  _Resume3CustomSliderState createState() => _Resume3CustomSliderState();
}

class _Resume3CustomSliderState extends State<Resume3CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        width: double.infinity,
        // height: 10.0,
        decoration: BoxDecoration(
          border: widget.color == 'white'
              ? Border.all(color: Colors.white, width: 1)
              : Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: (_value! - widget.min) /
                    (widget.max - widget.min) *
                    widget.width,
                // height: 10.0,
                decoration: BoxDecoration(
                  color: widget.color == "black"
                      ? Colors.black
                      : widget.color == "white"
                          ? Colors.white
                          : const Color(0xFF01A698),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 4 //////
class Resume4CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final String color;
  final double width;

  const Resume4CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.color,
    required this.width,
  });

  @override
  _Resume4CustomSliderState createState() => _Resume4CustomSliderState();
}

class _Resume4CustomSliderState extends State<Resume4CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 30,
        height: 30.0,
        decoration: BoxDecoration(
          border: Border.all(
              color: widget.color == 'black'
                  ? Colors.black
                  : const Color(0xFFFF9C01),
              // color: Colors.black,
              width: 2),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 30.0,
              decoration: BoxDecoration(
                color: widget.color == 'black'
                    ? Colors.black
                    : const Color(0xFFFF9C01),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 5 //////
class Resume5CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final double width;

  const Resume5CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.width,
  });

  @override
  Resume5CustomSliderState createState() => Resume5CustomSliderState();
}

class Resume5CustomSliderState extends State<Resume5CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        // width: double.infinity,
        height: 30.0,
        decoration: const BoxDecoration(
          // border:  Border.all(
          color: Color(0xFFCA9B6D),
          //     // color: Colors.black,
          //     width: 2
          // ),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color(0xFF41556E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 6 //////
class Resume6CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final double width;

  const Resume6CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.width,
  });

  @override
  Resume6CustomSliderState createState() => Resume6CustomSliderState();
}

class Resume6CustomSliderState extends State<Resume6CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        width: double.infinity,
        height: 10.0,
        decoration: const BoxDecoration(
          // border:  Border.all(
          color: Color(0xFF7C949E),
          //     // color: Colors.black,
          //     width: 2
          // ),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 10.0,
              decoration: const BoxDecoration(
                color: Color(0xFF0C344D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 8 //////
class Resume8CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final double width;

  const Resume8CustomSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.width,
  });

  @override
  Resume8CustomSliderState createState() => Resume8CustomSliderState();
}

class Resume8CustomSliderState extends State<Resume8CustomSlider> {
  double? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        double newValue = _value! + details.delta.dx;
        newValue = newValue.clamp(widget.min, widget.max);
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      child: Container(
        width: double.infinity,
        height: 10.0,
        decoration: const BoxDecoration(
          // border:  Border.all(
          color: Color(0xFF5D5C6A),
          //     // color: Colors.black,
          //     width: 2
          // ),
        ),
        child: Stack(
          children: [
            Container(
              width: (_value! - widget.min) /
                  (widget.max - widget.min) *
                  widget.width,
              height: 10.0,
              decoration: const BoxDecoration(
                color: Color(0xFFF0C829),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////// Resume 11 //////
Resume11CustomSlider resume11CustomSlider = Get.put(Resume11CustomSlider());

class Resume11CustomSlider extends GetxController {
  slider11(BuildContext context, var value,var onchanged) {
    return Container(
      width: ScreenSize.horizontalBlockSize! * 32,
      child: SfSliderTheme(
        data: SfSliderThemeData(
          thumbColor: Colors.transparent,
          thumbStrokeWidth: 0,
          activeTrackHeight: 5,
          activeTrackColor: const Color(0xFF45B877),
          inactiveTrackColor: const Color(0xFF4F5764),
          thumbStrokeColor: Colors.black45,
        ),
        child: Center(
          child: SfSlider(
            showLabels: false,
            value: value,
            min: 10,
            max: 100,
            // interval: 1000,
            thumbIcon: Container(
              // height: 20.0,
              // width: 5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/image/Template Image/Resume 11 Image/Group 137.png"),
                    scale: 2.0,
                  )
                // color: Colors.red,
              ),
            ),
            onChanged: onchanged,
          ),
        ),
      ),
    );
  }
}
