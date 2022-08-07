part of 'second_view.dart';

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const StyledTitle(),
          const SubTitle(),
          const SizedBox(height: 20),
          Center(
            child: Image.network(PngImages.catLady),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 50,
            width: double.infinity,
            child: StyledButton(),
          ),
        ],
      ),
    );
  }
}
