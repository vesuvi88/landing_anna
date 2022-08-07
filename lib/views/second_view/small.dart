part of 'second_view.dart';

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Text(
                'Подпишись на меня в Инстаграм и оставайся на связи',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              iconSize: 60,
              onPressed: () {
                launchUrl(Uri.parse('https://instagram.com/_anna.garanina_'));
              },
              icon: SvgPicture.network(SvgIcons.instagramIcon),
            ),
          ],
        ),
      ),
    );
  }
}
