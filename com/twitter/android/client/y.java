package com.twitter.android.client;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
class y implements OnSharedPreferenceChangeListener {
    final /* synthetic */ SharedPreferences a;
    final /* synthetic */ x b;

    y(x xVar, SharedPreferences sharedPreferences) {
        this.b = xVar;
        this.a = sharedPreferences;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("media_forward".equals(str)) {
            this.b.a(this.a.getBoolean(str, true), true);
        }
    }
}
