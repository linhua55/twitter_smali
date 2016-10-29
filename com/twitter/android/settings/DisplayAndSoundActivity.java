package com.twitter.android.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.mx;
import com.twitter.library.client.aj;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class DisplayAndSoundActivity extends TwitterPreferenceActivity implements OnPreferenceClickListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230733);
        if (!(OpenUriHelper.b() || aj.b((Context) this))) {
            b("in_app_browser");
        }
        if (OpenUriHelper.c()) {
            findPreference("readability_mode").setOnPreferenceClickListener(this);
        } else {
            b("readability_mode");
        }
        findPreference("pref_accessibility").setOnPreferenceClickListener(this);
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        int i = -1;
        switch (key.hashCode()) {
            case -1221685202:
                if (key.equals("readability_mode")) {
                    i = 0;
                    break;
                }
                break;
            case 2081045554:
                if (key.equals("pref_accessibility")) {
                    i = 1;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                String str;
                if (((CheckBoxPreference) preference).isChecked()) {
                    str = "settings::::enable_quick_read";
                } else {
                    str = "settings::::disable_quick_read";
                }
                bbu.a(new TwitterScribeLog(k().c().g()).b(str));
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                startActivity(new Intent(this, AccessibilityActivity.class));
                return true;
            default:
                return false;
        }
    }
}
