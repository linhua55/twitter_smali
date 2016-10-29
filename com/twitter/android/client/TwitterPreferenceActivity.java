package com.twitter.android.client;

import android.content.Context;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity.Header;
import android.preference.PreferenceGroup;
import com.twitter.android.hw;
import com.twitter.android.jh;
import com.twitter.library.client.AbsPreferenceActivity;
import com.twitter.library.client.aa;
import java.util.List;

/* compiled from: Twttr */
public abstract class TwitterPreferenceActivity extends AbsPreferenceActivity implements hw {
    protected aa d;
    protected c e;

    public boolean D() {
        return true;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ah_();
        this.e = c.a((Context) this);
        this.d = new jh(this);
    }

    public void onBuildHeaders(List<Header> list) {
        ah_();
    }

    protected void ah_() {
        setContentView(2130969212);
    }

    protected void onResume() {
        super.onResume();
        if (this.d != null) {
            this.e.a(this.d);
        }
    }

    protected void onPause() {
        super.onPause();
        if (this.d != null) {
            this.e.b(this.d);
        }
    }

    protected boolean b(String str) {
        return a(str, getPreferenceScreen());
    }

    private boolean a(String str, PreferenceGroup preferenceGroup) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            if (str.equals(preference.getKey())) {
                preferenceGroup.removePreference(preference);
                return true;
            }
        }
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            Preference preference2 = preferenceGroup.getPreference(i2);
            if ((preference2 instanceof PreferenceGroup) && a(str, (PreferenceGroup) preference2)) {
                return true;
            }
        }
        return false;
    }
}
