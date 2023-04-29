part of profile;

class SettingItem extends StatelessWidget {
  const SettingItem(
      {required this.onTap, required this.icon, this.title = "", this.trailing, Key? key})
      : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: onTap,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Icon(
            icon,
          ),
          title: Text(title),
          trailing: trailing,
        ),
      ),
    );
  }
}
