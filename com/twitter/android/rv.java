package com.twitter.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
class rv implements OnSharedPreferenceChangeListener {
    final /* synthetic */ TimelineFragment a;

    rv(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("media_forward".equals(str) && TimelineFragment.a(this.a)) {
            ((vu) TimelineFragment.b(this.a)).c(sharedPreferences.getBoolean(str, true));
        }
    }
}
