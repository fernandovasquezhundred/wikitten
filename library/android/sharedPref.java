// Specifying a Preference File

SharedPreferences sp = getActivity().getSharedPreferences("Settings", Context.MODE_PRIVATE); 
// Settings => FileName
SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(getActivity());
 // File => /data/data/com.package.name/shared_prefs/com.package.name_preferences.xml

SharedPreferences.Editor editor = sp.edit();
editor.putString("john", "username");
editor.putInt("id", 1);
editor.apply();

SharedPreferences mSettings = getActivity().getSharedPreferences("Settings", Context.MODE_PRIVATE);
String cookieName = mSettings.getString("cookieName", "missing");

