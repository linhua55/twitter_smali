package com.twitter.android.av;

import android.content.Context;
import android.preference.PreferenceManager;
import com.twitter.config.AppConfig;

/* compiled from: Twttr */
public class bj extends bm {
    public bj(Context context) {
        super(context);
    }

    public void a(long j) {
        boolean z = false;
        if (AppConfig.m().p()) {
            z = PreferenceManager.getDefaultSharedPreferences(this.a).getBoolean("video_disable_control_hiding", false);
        }
        if (!z) {
            super.a(j);
        }
    }
}
