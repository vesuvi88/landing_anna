part of 'second_view.dart';

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StyledTitle(),
          SubTitle(),
          SizedBox(height: 20),
          Center(
            child: Image.network("assets/cat-lady.png", scale: 1),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: StyledButton(),
          ),
        ],
      ),
    );
  }
}
