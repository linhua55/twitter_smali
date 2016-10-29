package com.twitter.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
class l implements OnSharedPreferenceChangeListener {
    final /* synthetic */ ActivityFragment a;

    l(ActivityFragment activityFragment) {
        this.a = activityFragment;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("media_forward".equals(str) && ActivityFragment.a(this.a)) {
            ((ji) ActivityFragment.b(this.a)).a(sharedPreferences.getBoolean(str, true));
        }
    }
}
