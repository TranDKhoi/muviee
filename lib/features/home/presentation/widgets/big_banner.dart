part of home;

class BigBanner extends StatelessWidget {
  const BigBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/boarding.jpg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 80,
            width: context.screenSize.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mulan",
                style: AppStyle.largeTitleTextStyle,
              ),
              SizedBox(
                height: 20,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => Text("Action"),
                  separatorBuilder: (ctx, i) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("•"),
                  ),
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 32,
          bottom: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.play_arrow_sharp,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
