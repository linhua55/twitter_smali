package com.twitter.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RemoteViews;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.WidgetControl;
import com.twitter.android.client.cd;
import com.twitter.android.widget.RadioButtonPreference;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ar;
import com.twitter.library.util.b;
import com.twitter.util.aj;
import java.util.ArrayList;

/* compiled from: Twttr */
public class WidgetSettingsActivity extends TwitterPreferenceActivity implements OnAccountsUpdateListener, OnPreferenceChangeListener, OnClickListener {
    private int a;
    private String b;
    private int c;
    private RadioButtonPreference f;
    private RadioButtonPreference g;

    public WidgetSettingsActivity() {
        this.a = 0;
        this.b = BuildConfig.VERSION_NAME;
        this.c = 0;
    }

    protected void onCreate(Bundle bundle) {
        if (getIntent().hasExtra(":android:show_fragment")) {
            throw new IllegalArgumentException("Invalid fragment for this activity.");
        }
        super.onCreate(bundle);
        setResult(0);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.a = extras.getInt("appWidgetId", 0);
        }
        if (this.a == 0) {
            finish();
        }
        if (bg.a().c().d()) {
            addPreferencesFromResource(2131230756);
            RadioButtonPreference radioButtonPreference = (RadioButtonPreference) findPreference("widget_content_tweets");
            radioButtonPreference.setOnPreferenceChangeListener(this);
            this.f = radioButtonPreference;
            radioButtonPreference = (RadioButtonPreference) findPreference("widget_content_mentions");
            radioButtonPreference.setOnPreferenceChangeListener(this);
            this.g = radioButtonPreference;
            ((Button) findViewById(2131951937)).setOnClickListener(this);
        } else {
            c();
        }
        AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
    }

    protected void ah_() {
        setContentView(2130969548);
    }

    protected void onDestroy() {
        super.onDestroy();
        AccountManager.get(this).removeOnAccountsUpdatedListener(this);
    }

    public boolean onSearchRequested() {
        return false;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if ("widget_account".equals(key)) {
            this.b = (String) obj;
            a((ListPreference) preference, this.b);
            return true;
        } else if ("widget_content_tweets".equals(key)) {
            this.c = 0;
            this.g.setChecked(false);
            return true;
        } else if (!"widget_content_mentions".equals(key)) {
            return false;
        } else {
            this.c = 1;
            this.f.setChecked(false);
            return true;
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131951937) {
            c();
        }
    }

    private void c() {
        int i;
        int i2;
        AppWidgetManager instance = AppWidgetManager.getInstance(this);
        int i3 = instance.getAppWidgetInfo(this.a).initialLayout;
        if (i3 == 2130969544) {
            i = 2131230725;
            i2 = 0;
        } else {
            i2 = 1;
            i = 2131230724;
        }
        if (aj.a(this.b)) {
            this.b = bg.a().c().e();
        }
        String str = this.b;
        ar.a((Context) this).a(this.a, i2, str, this.c);
        instance.updateAppWidget(this.a, new RemoteViews(getPackageName(), i3));
        Intent intent = new Intent();
        intent.putExtra("appWidgetId", this.a);
        setResult(-1, intent);
        if (aj.b((CharSequence) str)) {
            cd.a((Context) this).a(bg.a().b(str), false);
        } else {
            WidgetControl.a((Context) this, i);
        }
        finish();
    }

    private static void a(ListPreference listPreference, String str) {
        CharSequence[] entries = listPreference.getEntries();
        int findIndexOfValue = listPreference.findIndexOfValue(str);
        if (findIndexOfValue != -1) {
            listPreference.setTitle(entries[findIndexOfValue]);
        }
    }

    public void onAccountsUpdated(Account[] accountArr) {
        if (accountArr != null && accountArr.length != 0 && getPreferenceScreen() != null) {
            this.b = bg.a().c().e();
            ArrayList arrayList = new ArrayList();
            int i = -1;
            for (Account account : accountArr) {
                if (b.a.equals(account.type)) {
                    arrayList.add(account.name);
                    if (i == -1 && account.name.equals(this.b)) {
                        i = arrayList.size() - 1;
                    }
                }
            }
            int size = arrayList.size();
            if (size > 1 && i >= 0) {
                Preference listPreference = new ListPreference(this);
                listPreference.setKey("widget_account");
                listPreference.setDialogTitle(2131363764);
                listPreference.setPersistent(false);
                CharSequence[] charSequenceArr = new CharSequence[size];
                arrayList.toArray(charSequenceArr);
                listPreference.setEntries(charSequenceArr);
                listPreference.setEntryValues(charSequenceArr);
                listPreference.setValueIndex(i);
                listPreference.setTitle(this.b);
                listPreference.setSummary(null);
                listPreference.setOnPreferenceChangeListener(this);
                Preference preferenceCategory = new PreferenceCategory(this);
                preferenceCategory.setTitle(2131363764);
                preferenceCategory.setOrder(0);
                getPreferenceScreen().addPreference(preferenceCategory);
                preferenceCategory.addPreference(listPreference);
            }
        }
    }
}
