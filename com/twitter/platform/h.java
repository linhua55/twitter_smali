package com.twitter.platform;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
class h implements OnSharedPreferenceChangeListener {
    final /* synthetic */ r a;
    final /* synthetic */ g b;

    h(g gVar, r rVar) {
        this.b = gVar;
        this.a = rVar;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        this.a.a(this.b, str);
    }
}
