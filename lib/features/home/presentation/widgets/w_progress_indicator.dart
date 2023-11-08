import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_architecture/features/home/presentation/bloc/home_bloc.dart';
import 'package:task_architecture/gen/colors.gen.dart';

class WCustomProgressIndicator extends StatelessWidget {
  const WCustomProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) => CupertinoSliverRefreshControl(
    onRefresh:() async{
      context.read<HomeBloc>().add(const HomeEvent.getData());
      await Future.delayed(const Duration(seconds: 1));
    },
    builder: (_, __, ___, ____, _____) =>
    const Stack(
      children: [
        Center(
          child: SizedBox(
            width: 29,
            height: 29,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: ColorName.blue,
                  shape: BoxShape.circle),
            ),
          ),
        ),
        Center(
          child: CircularProgressIndicator(
            color: ColorName.blue,
            strokeWidth: 2,
          ),
        ),
      ],
    ),
  );
}