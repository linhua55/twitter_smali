package com.twitter.android.settings.country;

import android.content.Context;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.support.v7.recyclerview.BuildConfig;
import android.util.AttributeSet;
import com.twitter.android.settings.ListPreference;
import com.twitter.android.widget.UrlLinkablePreference;

/* compiled from: Twttr */
public class CountryPreference extends PreferenceCategory implements OnPreferenceChangeListener, d {
    private ListPreference a;
    private a b;
    private Preference c;

    public CountryPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public CountryPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.a = a(context);
        this.c = b(context, attributeSet);
    }

    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        addPreference(this.c);
        addPreference(this.a);
    }

    private Preference b(Context context, AttributeSet attributeSet) {
        UrlLinkablePreference urlLinkablePreference = new UrlLinkablePreference(context, attributeSet);
        urlLinkablePreference.setTitle(BuildConfig.VERSION_NAME);
        urlLinkablePreference.setKey("country_learn_more");
        urlLinkablePreference.a(2131364420);
        urlLinkablePreference.setSummary(2131363628);
        return urlLinkablePreference;
    }

    private ListPreference a(Context context) {
        ListPreference listPreference = new ListPreference(context);
        listPreference.setKey("country_selector");
        listPreference.setTitle(2131363629);
        listPreference.setDialogTitle(2131363630);
        listPreference.setOnPreferenceChangeListener(this);
        return listPreference;
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(String[] strArr, String[] strArr2) {
        this.a.setEntryValues(strArr);
        this.a.setEntries(strArr2);
    }

    public void a(String str) {
        this.a.setValue(str);
        this.a.setSummary(this.a.getEntry());
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        this.a.setValue(obj.toString());
        this.a.setSummary(this.a.getEntry());
        if (this.b != null) {
            this.b.a(obj.toString());
        }
        return true;
    }
}
