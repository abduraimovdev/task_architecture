import 'package:flutter/material.dart';

class BindingScope extends InheritedWidget {
  final BindingValue value;

  const BindingScope({required this.value, super.key, required super.child,});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }

  factory BindingScope.of(BuildContext context) => context.getInheritedWidgetOfExactType<BindingScope>()!;

  T getValue<T extends BindingValue>() => value as T;
}


abstract interface class BindingValue {}