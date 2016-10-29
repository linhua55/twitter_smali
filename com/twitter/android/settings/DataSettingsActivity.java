package com.twitter.android.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceManager;
import com.twitter.android.WebViewActivity;
import com.twitter.android.av.u;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.mx;
import com.twitter.library.network.forecaster.b;
import defpackage.bdj;

/* compiled from: Twttr */
public class DataSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230730);
        ListPreference listPreference = (ListPreference) findPreference("video_autoplay");
        if (listPreference.getValue() == null) {
            listPreference.setValue(u.a(b.a()));
        }
        findPreference("video_autoplay_learn_more").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364424))));
        if (PreferenceManager.getDefaultSharedPreferences(this).contains("twitter_access_config")) {
            findPreference("data_charges_alerts").setOnPreferenceChangeListener(this);
        } else {
            b("data_charges_alerts");
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case 1701899212:
                if (key.equals("data_charges_alerts")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                z = ((Boolean) obj).booleanValue();
                bdj a = bdj.a((Context) this);
                a.a(z, false);
                a.d(z, false);
                a.c(z, false);
                return true;
            default:
                return false;
        }
    }
}
