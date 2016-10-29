package com.twitter.android.settings.developer;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.text.Editable;
import android.text.TextWatcher;
import bvj;
import cfb;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.config.AppConfig;
import com.twitter.library.api.s;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterEditText;
import defpackage.chx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class FeatureSwitchesSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener, TextWatcher {
    private TwitterEditText a;
    private PreferenceCategory b;
    private SharedPreferences c;
    private SharedPreferences f;
    private final ArrayList<chx> g;
    private final Map<String, Preference> h;
    private Handler i;

    public FeatureSwitchesSettingsActivity() {
        this.g = new ArrayList();
        this.h = new HashMap();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.i = new Handler(Looper.getMainLooper());
        setTitle(2131364398);
        addPreferencesFromResource(2131230735);
        this.a = (TwitterEditText) findViewById(2131953096);
        this.a.setVisibility(0);
        this.a.setLabelText(2131364396);
        this.a.addTextChangedListener(this);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        this.c = PreferenceManager.getDefaultSharedPreferences(this);
        this.b = (PreferenceCategory) preferenceScreen.findPreference("fs_values");
        this.f = getSharedPreferences("fs_override", 0);
        preferenceScreen.findPreference("reset").setOnPreferenceClickListener(this);
        c();
        b(new s(this, l(), bvj.e()).k("FS fetches are always polling."), 0);
        String stringExtra = getIntent().getStringExtra("override_key");
        String stringExtra2 = getIntent().getStringExtra("override_value");
        if (AppConfig.m().p() && stringExtra != null && stringExtra2 != null) {
            b(stringExtra, stringExtra2);
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 0) {
            d();
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    private void c() {
        Object string = this.c.getString("feature_switch_search", TtmlNode.ANONYMOUS_REGION_ID);
        this.a.setText(string);
        this.a.setSelection(string.length());
    }

    private void c(String str) {
        if (this.g.isEmpty()) {
            d();
            return;
        }
        CharSequence replaceAll = str.toLowerCase().replaceAll("[^A-Za-z0-9 ]", TtmlNode.ANONYMOUS_REGION_ID);
        this.b.removeAll();
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            chx chx = (chx) it.next();
            if (chx.b.toLowerCase().replaceAll("[^A-Za-z0-9 ]", TtmlNode.ANONYMOUS_REGION_ID).contains(replaceAll)) {
                Preference preference = (Preference) this.h.get(chx.b);
                if (preference != null) {
                    this.b.addPreference(preference);
                }
            }
        }
    }

    private void d() {
        this.b.removeAll();
        this.h.clear();
        this.g.clear();
        this.g.addAll(n.a((Context) this));
        int i = 0;
        for (p pVar : n.a(this.g)) {
            Preference a;
            String str = pVar.a;
            List list = pVar.c;
            String str2 = pVar.b;
            if (list != null) {
                a = a(str, (CharSequence[]) list.toArray(new CharSequence[list.size()]), str2);
            } else {
                a = a(str, str2);
            }
            int i2 = i + 1;
            a.setOrder(i);
            a(str, a);
            i = i2;
        }
        if (!this.g.isEmpty()) {
            c(this.c.getString("feature_switch_search", TtmlNode.ANONYMOUS_REGION_ID));
        }
    }

    private void a(String str, Preference preference) {
        Preference preference2 = (Preference) this.h.get(str);
        if (preference2 != null) {
            preference2.setSummary("[DUPLICATE FEATURESWITCH - PLEASE CHECK CONFIG] " + preference2.getSummary());
        } else {
            this.h.put(str, preference);
        }
    }

    private ListPreference a(String str, CharSequence[] charSequenceArr, String str2) {
        CharSequence charSequence = (bvj.d().a(str) ? "[Overridden] " : TtmlNode.ANONYMOUS_REGION_ID) + "Current: " + str2;
        ListPreference listPreference = new ListPreference(this);
        listPreference.setTitle(str);
        listPreference.setDialogTitle(str);
        listPreference.setKey(str);
        listPreference.setEntries(charSequenceArr);
        listPreference.setEntryValues(charSequenceArr);
        listPreference.setValue(str2);
        listPreference.setSummary(charSequence);
        listPreference.setPersistent(false);
        listPreference.setOnPreferenceChangeListener(this);
        return listPreference;
    }

    private EditTextPreference a(String str, String str2) {
        CharSequence charSequence = (bvj.d().a(str) ? "[Overridden] " : TtmlNode.ANONYMOUS_REGION_ID) + "Current: " + str2;
        EditTextPreference editTextPreference = new EditTextPreference(this);
        editTextPreference.setTitle(str);
        editTextPreference.setDialogTitle(str);
        editTextPreference.setKey(str);
        editTextPreference.setText(str2);
        editTextPreference.setSummary(charSequence);
        editTextPreference.setPersistent(false);
        editTextPreference.setOnPreferenceChangeListener(this);
        return editTextPreference;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String obj2 = obj != null ? obj.toString() : TtmlNode.ANONYMOUS_REGION_ID;
        if (n.a((Context) this, preference.getKey(), obj2)) {
            preference.setSummary("[Overridden] Current: " + obj2);
            return true;
        }
        this.i.post(new r(this, obj2));
        return false;
    }

    public boolean onPreferenceClick(Preference preference) {
        if (!"reset".equals(preference.getKey())) {
            return false;
        }
        new Builder(this).setMessage(2131364392).setPositiveButton(2131364393, new s(this)).setNegativeButton(2131362041, null).setCancelable(true).create().show();
        return true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        this.c.edit().putString("feature_switch_search", obj).apply();
        c(obj);
    }

    private void b(String str, String str2) {
        Preference d = d(str);
        if (d != null) {
            onPreferenceChange(d, str2);
            finish();
            return;
        }
        cfb.b("FeatureSwitches", "No feature switch found with key: " + str);
    }

    private Preference d(String str) {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            chx chx = (chx) it.next();
            if (chx.b.equalsIgnoreCase(str)) {
                return (Preference) this.h.get(chx.b);
            }
        }
        return null;
    }
}
