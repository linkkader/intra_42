// Created by linkkader on 18/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/params/constants.dart';
import 'package:intra_42/data/repositories/auth_repository.dart';
import 'package:intra_42/main.dart';
import '../../../data/locale_storage/locale_storage.dart';
import '../../notifier/bool_notifier.dart';
import '../../utils_widgets/text_field.dart';

class ApiSettings extends StatefulWidget {
  const ApiSettings({Key? key}) : super(key: key);

  @override
  State<ApiSettings> createState() => _ApiSettingsState();
}

class _ApiSettingsState extends State<ApiSettings> {

  StateNotifierProvider<BoolNotifier, bool> notifierObscure = StateNotifierProvider((ref) => BoolNotifier(true));
  final _endPointController = TextEditingController();
  final _secretController = TextEditingController();
  final _redirectUrlController = TextEditingController();
  final _clientIdController = TextEditingController();
  final _fieldRequiredProvider = StateNotifierProvider<BoolNotifier, bool>((ref) => BoolNotifier(false));
  final loadingProvider = StateProvider((ref) => false);


  bool _validate() {
    return (
        _endPointController.text.isNotEmpty &&
            _secretController.text.isNotEmpty &&
            _redirectUrlController.text.isNotEmpty &&
            _clientIdController.text.isNotEmpty
    );
  }

  @override
  void initState() {
    try{
      var endpoint = LocaleStorage.getString("endpoint");
      var redirectUrl = LocaleStorage.getString("redirectUrl");
      var clientId =  LocaleStorage.getString("clientId");
      var clientSecret = LocaleStorage.getString("clientSecret");
      if (endpoint != null && redirectUrl != null && clientId != null && clientSecret != null) {
        _endPointController.text = endpoint;
        _redirectUrlController.text = redirectUrl;
        _clientIdController.text = clientId;
        _secretController.text = clientSecret;
      }
    }catch(_){

    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: App.colorScheme.background,
        title: Text("Api Settings", style : GoogleFonts.ptSans(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldWidget(App.s.endpoint, controller: _endPointController, notifierRequired: _fieldRequiredProvider),
            const SizedBox(height: 16,),
            TextFieldWidget(App.s.redirect_url, controller: _redirectUrlController, notifierRequired: _fieldRequiredProvider),
            const SizedBox(height: 16,),
            TextFieldWidget(App.s.secret, controller: _secretController, notifierRequired: _fieldRequiredProvider),
            const SizedBox(height: 16,),
            TextFieldWidget(App.s.client_id, controller: _clientIdController, notifierRequired: _fieldRequiredProvider),
            const SizedBox(height: 16,),
            Consumer(builder: (context, ref, child) {
              if (ref.watch(loadingProvider)) {
                return const Center(child: CircularProgressIndicator());
              }
              return TextButton(
                  onPressed: (){
                    ref.read(_fieldRequiredProvider.notifier).toggle();
                    if (_validate()){
                      ref.read(loadingProvider.notifier).state = true;
                      AuthRepository().checkApiAccess(_endPointController.value.text, _redirectUrlController.value.text, _clientIdController.value.text, _secretController.value.text).then((value) {
                        ref.read(loadingProvider.notifier).state = false;
                        if (value.first){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Saved")));
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.second)));
                        }
                      }).catchError((error) {
                        ref.read(loadingProvider.notifier).state = false;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
                      });
                    }
                  },
                  child: Text(App.s.save, style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary, fontSize: 20),)
              );
            },),
            TextButton(
                onPressed: (){
                  LocaleStorage.deleteString("endpoint");
                  LocaleStorage.deleteString("redirectUrl");
                  LocaleStorage.deleteString("clientId");
                  LocaleStorage.deleteString("clientSecret");
                  reset();
                },
                child: Text(App.s.reset, style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary, fontSize: 20),)
            )
          ],
        ),
      ),
    );
  }
}
