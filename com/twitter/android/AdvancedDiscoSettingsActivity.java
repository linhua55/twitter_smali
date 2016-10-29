package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.dialog.LoggedOutSettingDialogFragmentActivity;
import com.twitter.android.settings.ProxySettingsActivity;
import com.twitter.android.settings.developer.l;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aa;
import com.twitter.library.util.ad;
import com.twitter.library.util.z;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AdvancedDiscoSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener {
    CheckBoxPreference a;
    CheckBoxPreference b;
    Long c;
    private ad f;
    private String g;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Session l = l();
        if (getIntent().getBooleanExtra("extra_is_signup_process", false) || !l.d()) {
            boolean z = false;
        } else {
            int i = 1;
        }
        if (i != 0) {
            this.c = Long.valueOf(l.g());
            this.g = "settings";
            this.f = new z(this, l);
        } else {
            this.c = Long.valueOf(0);
            this.g = "signup_settings";
            this.f = aa.a((Context) this);
        }
        bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, ":::impression"));
        addPreferencesFromResource(2131230737);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        findPreference("advanced_proxy").setOnPreferenceClickListener(this);
        this.a = (CheckBoxPreference) findPreference("email_disco");
        this.b = (CheckBoxPreference) findPreference("phone_disco");
        if (i != 0 || d.a("android_logged_out_advanced_signup_settings_enabled")) {
            this.a.setChecked(this.f.a());
            this.a.setOnPreferenceChangeListener(this);
            this.b.setChecked(this.f.b());
            this.b.setOnPreferenceChangeListener(this);
        } else {
            preferenceScreen.removePreference(this.a);
            preferenceScreen.removePreference(this.b);
        }
        l.a(this);
    }

    public boolean onPreferenceClick(Preference preference) {
        if (!"advanced_proxy".equals(preference.getKey())) {
            return false;
        }
        bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, "proxy:::click"));
        startActivity(new Intent(this, ProxySettingsActivity.class));
        return true;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean a = d.a("people_discoverability_settings_update_enabled");
        boolean z = true;
        switch (key.hashCode()) {
            case -2085015785:
                if (key.equals("email_disco")) {
                    z = false;
                    break;
                }
                break;
            case -722076823:
                if (key.equals("phone_disco")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, "email_disco:::click"));
                if (!booleanValue) {
                    this.f.a(false);
                    if (!a) {
                        a(0);
                        break;
                    }
                }
                bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, "email_disco:::enabled"));
                this.f.a(true);
                break;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, "phone_disco:::click"));
                if (!booleanValue) {
                    this.f.b(false);
                    if (!a) {
                        a(1);
                        break;
                    }
                }
                bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, "phone_disco:::enabled"));
                this.f.b(true);
                break;
                break;
            default:
                return false;
        }
        return true;
    }

    protected void onPause() {
        this.f.c();
        super.onPause();
    }

    protected void a(int i) {
        startActivityForResult(new Intent(getBaseContext(), LoggedOutSettingDialogFragmentActivity.class).putExtra("message", i == 1 ? 2131363719 : 2131363646).putExtra("title", i == 1 ? 2131363720 : 2131363647).putExtra("extra_dialog_id", i), 0);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 0) {
            String str;
            boolean booleanExtra = intent.getBooleanExtra("user_choice", false);
            String str2 = "ok";
            if (intent.getIntExtra("extra_dialog_id", 0) == 0) {
                str = "email_disco";
                if (!booleanExtra) {
                    str2 = "cancel";
                    this.f.a(true);
                    this.a.setChecked(true);
                }
            } else {
                str = "phone_disco";
                if (!booleanExtra) {
                    str2 = "cancel";
                    this.f.b(true);
                    this.b.setChecked(true);
                }
            }
            if (booleanExtra) {
                bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, str + ":::disabled"));
            }
            bbu.a(new TwitterScribeLog(this.c.longValue()).b(this.g, str, "dialog", str2, "click"));
        }
    }
}
