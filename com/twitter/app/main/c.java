package com.twitter.app.main;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import defpackage.bcc;

/* compiled from: Twttr */
class c implements OnSharedPreferenceChangeListener {
    final /* synthetic */ MainActivity a;

    c(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("data_usage_meter".equals(str)) {
            MainActivity.a = sharedPreferences.getBoolean("data_usage_meter", false);
            bcc.a().a(MainActivity.a);
        }
    }
}
