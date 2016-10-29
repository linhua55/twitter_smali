package com.twitter.library.util;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.twitter.util.ak;

/* compiled from: Twttr */
final class ap implements OnSharedPreferenceChangeListener {
    ap() {
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("sound_effects".equals(str)) {
            ao.b = sharedPreferences.getBoolean(str, true);
        } else if ("font_size".equals(str)) {
            String string = sharedPreferences.getString("font_size", null);
            if (string != null) {
                ao.a = Float.parseFloat(string) * ak.c();
            }
        }
    }
}
