package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.widget.Toast;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.c;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bex;

/* compiled from: Twttr */
public class PersonalizedAdsSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = c.a((Context) this);
        setTitle(2131363715);
        addPreferencesFromResource(2131230744);
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("allow_personalized_ads");
        checkBoxPreference.setOnPreferenceChangeListener(this);
        UserSettings j = l().j();
        if (j != null) {
            checkBoxPreference.setChecked(j.q);
        } else {
            checkBoxPreference.setEnabled(false);
            Toast.makeText(this, getString(2131363749), 1).show();
            finish();
        }
        findPreference("learn_more").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364422))));
    }

    protected void onResume() {
        super.onResume();
        if (!l().d()) {
            DispatchActivity.a(this, getIntent());
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        if (!"allow_personalized_ads".equals(key)) {
            return false;
        }
        Session l = l();
        UserSettings j = l.j();
        j.q = ((Boolean) obj).booleanValue();
        if (j.q) {
            key = "privacy_settings:personalized_ads:::opt_in";
        } else {
            key = "privacy_settings:personalized_ads:::opt_out";
        }
        this.J.a(bex.a(this, l, j, false, null));
        bbu.a(new TwitterScribeLog(l.g()).b(key));
        return true;
    }
}
