package com.twitter.android.settings;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.geo.c;
import com.twitter.android.lf;
import com.twitter.android.mx;
import com.twitter.util.aj;
import defpackage.bvs;
import defpackage.bvy;

/* compiled from: Twttr */
public class LocationAndProxyActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener {
    private Preference a;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230736);
        this.a = findPreference("advanced_proxy");
        this.a.setOnPreferenceClickListener(this);
        d();
        Preference findPreference = findPreference("location");
        if (bvy.a((Context) this).c()) {
            findPreference.setOnPreferenceChangeListener(this);
        } else {
            getPreferenceScreen().removePreference(findPreference);
        }
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case 1393128465:
                if (key.equals("advanced_proxy")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                startActivityForResult(new Intent(this, ProxySettingsActivity.class), 1);
                return true;
            default:
                return false;
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            d();
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 2) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (bvs.a().f()) {
            c();
        } else {
            ((CheckBoxPreference) findPreference("location")).setChecked(false);
            c.a((Context) this);
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case 1901043637:
                if (key.equals("location")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                if (((Boolean) obj).booleanValue()) {
                    if (bvs.a().f()) {
                        c();
                    } else {
                        lf.a().a(2, (Activity) this, "android.permission.ACCESS_FINE_LOCATION");
                    }
                }
                return true;
            default:
                return false;
        }
    }

    private void c() {
        if (!bvs.a().e()) {
            OnClickListener gVar = new g(this);
            new Builder(this).setMessage(2131362411).setPositiveButton(2131363607, gVar).setNegativeButton(2131362041, gVar).setCancelable(false).create().show();
        }
    }

    private void d() {
        SharedPreferences sharedPreferences = getPreferenceManager().getSharedPreferences();
        if (sharedPreferences.getBoolean("proxy_enabled", false)) {
            CharSequence string = sharedPreferences.getString("proxy_host", BuildConfig.VERSION_NAME);
            if (aj.b(string)) {
                CharSequence string2 = sharedPreferences.getString("proxy_port", BuildConfig.VERSION_NAME);
                StringBuilder stringBuilder = new StringBuilder(string);
                if (aj.b(string2)) {
                    stringBuilder.append(':').append(string2);
                }
                this.a.setSummary(stringBuilder.toString());
                return;
            }
            return;
        }
        this.a.setSummary(2131363650);
    }
}
