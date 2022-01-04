import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/custom_font_size.dart';
import 'package:login_app/extensions/extensions_text.dart';
import 'package:login_app/spacer_box.dart';
import 'package:login_app/widgets/custom_avatar.dart';
import 'package:login_app/widgets/custom_button.dart';
import 'package:login_app/widgets/custom_checkbox.dart';
import 'package:login_app/widgets/custom_container.dart';
import 'package:login_app/widgets/custom_text_form_field.dart';
import 'package:login_app/widgets/custom_text_form_field_passsword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  TabController? _nestedTabController;

  @override
  void initState() {
    _nestedTabController = TabController(length: 2, vsync: this);
    _nestedTabController!.addListener(_handleTabSelection);

    super.initState();
  }

  @override
  void dispose() {
    _nestedTabController?.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    if (_nestedTabController!.indexIsChanging) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              _buildContent(),
              Positioned(
                bottom: 40,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  child: Image.asset(
                    'assets/images/geometrics.png',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  child: Image.asset(
                    'assets/images/curve.png',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipPath(
                      child: Image.asset('assets/images/fingerprint.png'),
                    ),
                    CustomSpacerBox.v8,
                    "Login with touch ID".description(
                      context,
                      color: Theme.of(context).backgroundColor,
                    ),
                    CustomSpacerBox.v8,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return CustomContainer(
      child: Center(
        child: Column(
          children: [
            "Login".title(context),
            CustomSpacerBox.v32,
            buildSubtitle(context),
            CustomSpacerBox.v16,
            _buildTabs(),
            CustomSpacerBox.v32,
            CustomTextFormField(
              prefixIcon: SizedBox.shrink(
                child: Image.asset("assets/images/mail.png"),
              ),
              labelText: 'Email Address',
              hintText: 'Email Address',
              textInputType: TextInputType.emailAddress,
              validate: (String? value) {},
            ),
            CustomSpacerBox.v32,
            TextFormFieldPassword(
              prefixIcon: SizedBox.shrink(
                child: Image.asset("assets/images/lock.png"),
              ),
              labelText: 'Password',
              hintText: 'Password',
              textInputType: TextInputType.text,
              validate: (String? value) {},
            ),
            CustomSpacerBox.v32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomCheckBox(
                    label: 'Remember password',
                    onChanged: (bool? value) {},
                    value: true,
                  ),
                ),
                "Forgot password".link(
                  context,
                  () {},
                  fontSize: CustomFontSize.f14,
                ),
              ],
            ),
            CustomSpacerBox.v32,
            CustomButton(
              text: 'Login',
              onTap: () {},
            ),
            CustomSpacerBox.v16,
            "or connect with".description(context),
            CustomSpacerBox.v16,
            _buildSocialButtons(),
            CustomSpacerBox.v32,
            _buildImagePeoples(),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePeoples() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/peoples.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialItem("assets/images/facebook_icon.png", () {}),
        _buildSocialItem("assets/images/instagram_icon.png", () {}),
        _buildSocialItem("assets/images/pinterest_icon.png", () {}),
        _buildSocialItem("assets/images/linkedin_icon.png", () {}),
      ],
    );
  }

  Widget _buildSocialItem(String path, void Function() onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CustomSpacer.min),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: CustomAvatar(
          backgroundImage: AssetImage(path),
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return TabBar(
      controller: _nestedTabController,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 1.5,
      indicatorColor: Theme.of(context).iconTheme.color,
      labelColor: Theme.of(context).primaryColor,
      unselectedLabelColor: Theme.of(context).textTheme.caption!.color,
      isScrollable: true,
      tabs: const [
        Tab(
          text: "Login",
        ),
        Tab(
          text: "Register",
        ),
      ],
      labelStyle: const TextStyle(fontSize: CustomFontSize.f18),
    );
  }

  Widget buildSubtitle(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing in you are agreeing our \n ',
            style: TextStyle(
              color: Theme.of(context).textTheme.headline4!.color,
              fontSize: Theme.of(context).textTheme.headline4!.fontSize,
            ),
          ),
          TextSpan(
            text: 'Term and privacy policy',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: Theme.of(context).textTheme.headline4!.fontSize,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
