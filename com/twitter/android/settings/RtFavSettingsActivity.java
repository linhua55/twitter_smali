package com.twitter.android.settings;

import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
public class RtFavSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    String a;
    String b;
    int c;
    boolean f;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.a = intent.getStringExtra("pref_choice_key");
        this.b = intent.getStringExtra("pref_mention_key");
        this.c = intent.getIntExtra("pref_choice", 0);
        this.f = intent.getBooleanExtra("pref_mention", false);
        setTitle(intent.getStringExtra("pref_title"));
        addPreferencesFromResource(intent.getIntExtra("pref_xml", 0));
        ListPreference listPreference = (ListPreference) findPreference(this.a);
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference(this.b);
        String valueOf = String.valueOf(this.c);
        listPreference.setValue(valueOf);
        aq.a(listPreference, valueOf);
        checkBoxPreference.setChecked(this.f);
        listPreference.setOnPreferenceChangeListener(this);
        checkBoxPreference.setOnPreferenceChangeListener(this);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (this.a.equals(preference.getKey())) {
            this.c = Integer.parseInt((String) obj);
            aq.a((ListPreference) preference, (String) obj);
            if (this.f && this.c == 0) {
                this.f = false;
                ((CheckBoxPreference) findPreference(this.b)).setChecked(false);
            }
        } else if (this.b.equals(preference.getKey())) {
            if (this.c <= 0) {
                return false;
            }
            this.f = ((Boolean) obj).booleanValue();
        }
        setResult(-1, new Intent().putExtra("pref_choice", this.c).putExtra("pref_mention", this.f));
        return true;
    }
}
