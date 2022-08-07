part of 'second_view.dart';

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Подпишись на меня в Инстаграм и оставайся на связи',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 20),
          IconButton(
            iconSize: 60,
            onPressed: () {
              launchUrl(Uri.parse('https://instagram.com/_anna.garanina_'));
            },
            icon: SvgPicture.network(SvgIcons.instagramIcon),
          ),
        ],
      ),
    );
  }
}
