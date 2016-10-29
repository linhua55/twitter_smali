package com.twitter.android;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceManager;
import com.twitter.android.client.TwitterPreferenceActivity;

/* compiled from: Twttr */
public class PtrDebugSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    private Preference a;
    private Preference b;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230747);
        this.a = findPreference("inject_ptr_index");
        this.a.setOnPreferenceChangeListener(this);
        this.b = findPreference("inject_ptr_order");
        this.b.setOnPreferenceChangeListener(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.a.setSummary(defaultSharedPreferences.getString("inject_ptr_index", "0"));
        this.b.setSummary(defaultSharedPreferences.getString("inject_ptr_order", null));
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if ("inject_ptr_index".equals(preference.getKey())) {
            this.a.setSummary(obj.toString());
        } else if ("inject_ptr_order".equals(preference.getKey())) {
            this.b.setSummary(obj.toString());
        }
        return true;
    }
}
