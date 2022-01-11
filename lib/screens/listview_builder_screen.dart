import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final scrollController = new ScrollController();
  bool isLoading = false;

  // Cuando el widget se crea
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  void add5() {
    setState(() {
      final lastId = imagesIds.last;
      imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    add5();

    setState(() {
      isLoading = false;
    });

    // Esto empuja un poquito hacia abajo si es que la carga tiene más resultados
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primary,
                onRefresh: onRefresh,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: imagesIds.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInImage(
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                          placeholder:
                              const AssetImage('assets/jar-loading.gif'),
                          image: NetworkImage(
                              'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                    }),
              ),
              if (isLoading)
                Positioned(
                    left: (_screenSize.width / 2) - 25,
                    bottom: 40,
                    child: const _LoadingIcon())
            ],
          ),
        ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF000000),
                offset: Offset.zero,
                blurRadius: 0.0,
                spreadRadius: 0.0)
          ]),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
