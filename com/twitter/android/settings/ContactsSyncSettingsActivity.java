package com.twitter.android.settings;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v4.internal.view.SupportMenu;
import com.twitter.android.addressbook.d;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.c;
import com.twitter.android.lf;
import com.twitter.android.mx;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import defpackage.bbu;
import defpackage.bgc;
import defpackage.bgf;
import defpackage.buc;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ContactsSyncSettingsActivity extends TwitterPreferenceActivity implements OnClickListener, OnPreferenceChangeListener, OnPreferenceClickListener {
    private CheckBoxPreference a;
    private String b;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.b = intent.getStringExtra("ContactsSyncSettingsActivity_account_name");
        this.I = intent.getLongExtra("ContactsSyncSettingsActivity_account_id", 0);
        addPreferencesFromResource(2131230729);
        this.a = (CheckBoxPreference) findPreference("upload_contacts");
        this.a.setOnPreferenceChangeListener(this);
        Preference findPreference = findPreference("upload_contacts_disconnect");
        this.a.setOnPreferenceClickListener(this);
        findPreference.setOnPreferenceClickListener(this);
        findPreference.setTitle(aq.a(getResources().getString(2131363467), (int) SupportMenu.CATEGORY_MASK));
    }

    protected void onResume() {
        super.onResume();
        this.a.setChecked(buc.c(this, this.b));
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        boolean z = true;
        switch (key.hashCode()) {
            case -203195190:
                if (key.equals("upload_contacts_disconnect")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                new Builder(this).setMessage(2131363468).setPositiveButton(2131363218, this).setNegativeButton(2131362041, this).create().show();
                return true;
            default:
                return false;
        }
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            d();
            b(new bgc(this, l()), 1);
            c.a((Context) this).a(false);
            bbu.a(new TwitterScribeLog(l().g()).b("settings:contacts:destroy_contacts::click"));
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        boolean z = true;
        switch (key.hashCode()) {
            case -1836600111:
                if (key.equals("upload_contacts")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                if (!Boolean.TRUE.equals(obj)) {
                    buc.a(this, this.b, 1);
                    c.a((Context) this).a(false);
                    bbu.a(new TwitterScribeLog(l().g()).b("settings:contacts:live_sync::off"));
                    break;
                }
                if (lf.a().a((Context) this, "android.permission.READ_CONTACTS")) {
                    c();
                    break;
                }
                lf.a().a(1, (Activity) this, "android.permission.READ_CONTACTS");
                return false;
        }
        return true;
    }

    private void c() {
        bbu.a(new TwitterScribeLog(l().g()).b("settings:contacts:live_sync::on"));
        boolean b = buc.b(this, this.b);
        buc.a(this, this.b, 2);
        if (b) {
            b(new bgf(this, l()), 2);
        }
    }

    private void d() {
        this.a.setChecked(false);
        buc.a(this, this.b, 0);
    }

    protected void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (xVar.U()) {
                    di.a((Context) this, this.I).e(39);
                    this.J.a(new d(this, l()));
                    finish();
                    return;
                }
                runOnUiThread(new e(this, 2131361874));
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!xVar.U()) {
                    d();
                    runOnUiThread(new e(this, 2131361874));
                }
            default:
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1 && lf.a().a("android.permission.READ_CONTACTS", strArr, iArr)) {
            c();
        }
    }
}
