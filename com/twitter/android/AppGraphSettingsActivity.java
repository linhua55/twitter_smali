package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.c;
import com.twitter.library.api.d;
import com.twitter.library.client.l;
import com.twitter.library.client.u;
import com.twitter.library.client.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import defpackage.boa;

/* compiled from: Twttr */
public class AppGraphSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = c.a((Context) this);
        setTitle(2131363617);
        String stringExtra = getIntent().getStringExtra("AppGraphSettingsActivity_account_name");
        addPreferencesFromResource(2131230723);
        stringExtra = new l(this, stringExtra).getString("app_graph_status", "undetermined");
        findPreference("allow_app_graph").setOnPreferenceChangeListener(this);
        d a = u.a.a();
        if (a == null || !a.b()) {
            b(new boa(getApplicationContext(), l()), 1);
            if (stringExtra.equals("undetermined")) {
                a(false, false, 2131361895);
            } else {
                a(true, stringExtra.equals("optin"), 0);
            }
        } else {
            a(false, false, 2131361893);
        }
        findPreference("app_graph_learn_more").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364419))));
    }

    protected void onResume() {
        super.onResume();
        if (!l().d()) {
            DispatchActivity.a(this, getIntent());
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key == null || !"allow_app_graph".equals(key)) {
            return false;
        }
        v.a((Context) this).a(((Boolean) obj).booleanValue() ? "optin" : "optout");
        return true;
    }

    private void a(boolean z, boolean z2, int i) {
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("allow_app_graph");
        checkBoxPreference.setEnabled(z);
        checkBoxPreference.setChecked(z2);
        if (i > 0) {
            checkBoxPreference.setSummary(i);
        } else {
            checkBoxPreference.setSummary(BuildConfig.VERSION_NAME);
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar = (aa) xVar.l().b();
        if (i == 1) {
            l lVar = new l(getApplicationContext(), l().e());
            if (aaVar.b()) {
                CharSequence g = ((boa) xVar).g();
                lVar.a().a("app_graph_status", aj.b(g) ? g : "undetermined").apply();
                if (aj.a(g) || "undetermined".equals(g)) {
                    a(false, false, 2131361895);
                    return;
                } else {
                    a(true, "optin".equals(g), 0);
                    return;
                }
            }
            a(false, false, 2131361894);
        }
    }
}
