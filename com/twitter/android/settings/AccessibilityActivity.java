package com.twitter.android.settings;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.widget.Toast;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.mx;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bex;

/* compiled from: Twttr */
public class AccessibilityActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230721);
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("compose_alt_text");
        if (checkBoxPreference != null) {
            checkBoxPreference.setOnPreferenceChangeListener(this);
            UserSettings j = l().j();
            if (j != null) {
                checkBoxPreference.setChecked(j.r);
                return;
            }
            checkBoxPreference.setEnabled(false);
            Toast.makeText(this, getString(2131363749), 1).show();
            finish();
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        Session l = l();
        UserSettings j = l.j();
        String key = preference.getKey();
        if (key == null || j == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case -834303472:
                if (key.equals("compose_alt_text")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                j.r = ((Boolean) obj).booleanValue();
                this.J.a(bex.a(this, l, j, false, null));
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(l().g());
                String[] strArr = new String[5];
                strArr[0] = "accessibility_settings";
                strArr[1] = null;
                strArr[2] = null;
                strArr[3] = "alt_text";
                strArr[4] = j.r ? "enable" : "disable";
                bbu.a(twitterScribeLog.b(strArr));
                return true;
            default:
                return false;
        }
    }
}
