import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  // Variable de interés
  bool isOpen = false;
  // Controlador de animaciones
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Para poder usar esto, primero tuve que usar SingleTickerProviderStateMixin
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isOpen ? controller.reverse() : controller.forward();

            isOpen = !isOpen;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          width: 150,
          height: isOpen ? 308 : 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 3),
                blurRadius: 5.0,
              ),
            ],
            color: Colors.black,
          ),
          child: Column(
            children: [
              _MenuTitle(isOpen: isOpen, controller: controller),
              //items
              if (isOpen) ...[
                CustomMenuItem(delay: 0, text: 'Home', onPressed: () => pageProvider.goTo(0)),
                CustomMenuItem(delay: 30, text: 'About', onPressed: () => pageProvider.goTo(1)),
                CustomMenuItem(delay: 60, text: 'Pricing', onPressed: () => pageProvider.goTo(2)),
                CustomMenuItem(delay: 90, text: 'Conctact', onPressed: () => pageProvider.goTo(3)),
                CustomMenuItem(delay: 120, text: 'Location', onPressed: () => pageProvider.goTo(4)),
                const SizedBox(height: 8)
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 40 : 0,
          ),
          const Text(
            'Menu',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
