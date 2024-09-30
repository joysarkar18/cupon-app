import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class FilterAnimatedOption extends StatelessWidget {
  const FilterAnimatedOption(
      {super.key, required this.title, required this.options});
  final String title;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.kh),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.kw),
          border: Border(bottom: BorderSide(color: context.borderColor1))),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white,
          collapsedIconColor: context.black01,
          iconColor: context.black01,
          childrenPadding: EdgeInsets.only(
              left: 10.kw, right: 10.kw, bottom: 10.kw), // Adjust padding here
          title: Text(
            title,
            style: TextStyleUtil.manrope16w600(color: context.black01),
          ),
          children: [
            Wrap(
              direction: Axis.horizontal,
              spacing: 10.kw,
              runSpacing: 10.kh,
              runAlignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.start, // Align children at the start
              children: options
                  .map(
                    (e) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.kw,
                            vertical: 4.kh,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: context.black04),
                              borderRadius: BorderRadius.circular(20.kw)),
                          child: Center(
                            child: Text(
                              e,
                              style: TextStyleUtil.manrope14w400(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
