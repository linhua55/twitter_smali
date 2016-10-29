package com.twitter.android.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceManager;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.Toast;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.library.client.az;
import com.twitter.util.aj;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class ProxySettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    public static final Pattern a;
    private boolean b;
    private String c;
    private String f;
    private boolean g;
    private EditTextPreference h;

    static {
        a = Pattern.compile("^[a-zA-Z0-9.\\-]+$");
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(2131363736);
        addPreferencesFromResource(2131230746);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.g = defaultSharedPreferences.getBoolean("proxy_enabled", false);
        this.c = defaultSharedPreferences.getString("proxy_host", BuildConfig.VERSION_NAME);
        this.f = defaultSharedPreferences.getString("proxy_port", BuildConfig.VERSION_NAME);
        findPreference("proxy_enabled").setOnPreferenceChangeListener(this);
        Preference findPreference = findPreference("proxy_host");
        if (aj.b(this.c)) {
            findPreference.setSummary(this.c);
        }
        findPreference.setOnPreferenceChangeListener(this);
        this.h = (EditTextPreference) findPreference;
        findPreference = findPreference("proxy_port");
        if (aj.b(this.f)) {
            findPreference.setSummary(this.f);
        }
        findPreference.setOnPreferenceChangeListener(this);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean z = false;
        String key = preference.getKey();
        CharSequence charSequence;
        if (key.equals("proxy_host")) {
            if (c(((EditTextPreference) preference).getEditText().getText().toString())) {
                charSequence = (String) obj;
                boolean z2 = this.b || !this.c.equals(charSequence);
                this.b = z2;
                if (aj.a(charSequence)) {
                    preference.setSummary(2131363657);
                } else {
                    preference.setSummary(charSequence);
                }
            } else {
                Toast.makeText(this, 2131362835, 1).show();
                return false;
            }
        } else if (key.equals("proxy_port")) {
            if (d(((EditTextPreference) preference).getEditText().getText().toString())) {
                charSequence = (String) obj;
                if (this.b || (aj.b(this.h.getText()) && !this.f.equals(charSequence))) {
                    z = true;
                }
                this.b = z;
                if (aj.a(charSequence)) {
                    preference.setSummary(2131363660);
                } else {
                    preference.setSummary(charSequence);
                }
            } else {
                Toast.makeText(this, 2131362837, 1).show();
                return false;
            }
        } else if (key.equals("proxy_enabled")) {
            if (this.b || ((Boolean) obj).booleanValue() != this.g) {
                z = true;
            }
            this.b = z;
        }
        setResult(-1);
        return true;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.b) {
            az.a((Context) this).a(new u(this));
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    private boolean c(String str) {
        return aj.a((CharSequence) str) || a.matcher(str.trim()).matches();
    }

    private boolean d(String str) {
        if (aj.a((CharSequence) str)) {
            return true;
        }
        try {
            if (Integer.parseInt(str.trim()) >= SupportMenu.USER_MASK) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
