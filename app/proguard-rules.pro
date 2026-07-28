# minifyEnabled false, jadi file ini praktis gak dipakai.
# Tetap disimpan karena dirujuk dari app/build.gradle (proguardFiles).

# Kalau nanti minify diaktifkan, aturan di bawah ini mencegah crash:
-keep class com.emakbet.app.** { *; }
-keep class com.google.firebase.** { *; }

# WebView + JavascriptInterface (jaga-jaga kalau nanti dipakai)
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
