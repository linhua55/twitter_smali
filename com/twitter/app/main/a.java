package com.twitter.app.main;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
class a implements OnSharedPreferenceChangeListener {
    final /* synthetic */ MainActivity a;

    a(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("connect_tab".equals(str) || "vit_filters".equals(str) || "notifications_follow_only".equals(str)) {
            boolean z = sharedPreferences.getBoolean("connect_tab", false);
            boolean z2 = sharedPreferences.getBoolean("notifications_follow_only", false);
            if (this.a.L != z || this.a.M != z2) {
                this.a.L = z;
                this.a.M = z2;
                this.a.a(this.a.L, this.a.M);
            }
        }
    }
}
