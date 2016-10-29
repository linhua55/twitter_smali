package com.twitter.android.settings;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceManager;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.bx;
import com.twitter.library.provider.bz;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dg;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
class l extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ MobileNotificationsActivity a;
    private final String b;
    private boolean c;
    private bx d;
    private int e;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Void) obj);
    }

    l(MobileNotificationsActivity mobileNotificationsActivity, String str) {
        this.a = mobileNotificationsActivity;
        this.b = str;
    }

    protected void onPreExecute() {
        super.onPreExecute();
        this.a.c(false);
    }

    protected Void a(Void... voidArr) {
        if (this.a.f) {
            this.c = PushRegistration.d(this.a, this.b);
        }
        bx b = ar.a(this.a).b(this.b);
        bz bzVar = new bz(b);
        boolean z = this.a.N && b.a;
        this.d = bzVar.a(z).a();
        if (this.d.m == 1) {
            long g = bg.a().b(this.b).g();
            Cursor query = this.a.getContentResolver().query(ck.a(ContentUris.withAppendedId(dg.m, g), g), new String[]{"_id"}, null, null, null);
            if (query != null) {
                try {
                    this.e = query.getCount();
                } finally {
                    query.close();
                }
            }
        }
        return null;
    }

    protected void a(Void voidR) {
        if (!this.a.isFinishing()) {
            Context applicationContext = this.a.getApplicationContext();
            Preference findPreference = this.a.findPreference("vibrate");
            if (!this.a.N) {
                findPreference.setSelectable(false);
                findPreference.setSummary(2131363755);
            }
            this.a.n = this.d;
            ((CheckBoxPreference) findPreference).setChecked(this.d.a);
            this.a.findPreference("ringtone").setDefaultValue(this.d.b);
            PreferenceManager.getDefaultSharedPreferences(applicationContext).edit().putString("ringtone", this.d.b).apply();
            this.a.g = this.a.n.b;
            ((CheckBoxPreference) this.a.findPreference("use_led")).setChecked(this.d.c);
            a(this.a.r, this.d.d);
            if (!this.a.m) {
                b(this.a.v, this.d.h);
            } else if (this.d.l > 0) {
                a(this.a.G, 2);
            } else if (this.d.h > 0) {
                a(this.a.G, 1);
            } else {
                a(this.a.G, 0);
            }
            b(this.a.y, this.d.n);
            if (this.a.f) {
                boolean z;
                this.a.o = this.c;
                MobileNotificationsActivity mobileNotificationsActivity = this.a;
                if (this.d.m == 1) {
                    z = true;
                } else {
                    z = false;
                }
                mobileNotificationsActivity.a(z, this.e);
                b(this.a.z, this.d.p);
                b(this.a.w, this.d.i);
                b(this.a.x, this.d.o);
                b(this.a.A, this.d.q);
                b(this.a.B, this.d.r);
                b(this.a.C, this.d.s);
                b(this.a.D, this.d.t);
                b(this.a.E, this.d.u);
                b(this.a.F, this.d.v);
                a(this.a.s, this.d.e);
                a(this.a.t, this.d.f);
                a(this.a.u, this.d.g);
                this.a.i = this.d.e;
                this.a.k = this.d.f;
            } else {
                b(this.a.q, this.d.m);
                a(this.a.s, this.d.e);
                a(this.a.t, this.d.f);
            }
            this.a.c(this.c);
        }
    }

    private void a(Preference preference, int i) {
        if (this.a.f) {
            ListPreference listPreference = (ListPreference) preference;
            String valueOf = String.valueOf(i);
            listPreference.setValue(valueOf);
            aq.a(listPreference, valueOf);
            listPreference.setOnPreferenceChangeListener(this.a);
            return;
        }
        b(preference, i);
    }

    private void b(Preference preference, int i) {
        boolean z = true;
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) preference;
        if (i != 1) {
            z = false;
        }
        checkBoxPreference.setChecked(z);
    }
}
