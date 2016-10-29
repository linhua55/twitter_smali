package com.twitter.android;

import android.content.Context;
import android.os.AsyncTask;
import android.preference.CheckBoxPreference;
import bdy;
import bel;
import defpackage.bei;

/* compiled from: Twttr */
public class pv extends AsyncTask<Void, Void, bel> {
    final /* synthetic */ SecuritySettingsActivity a;
    private final Context b;
    private final String c;

    public /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    public /* synthetic */ void onPostExecute(Object obj) {
        a((bel) obj);
    }

    pv(SecuritySettingsActivity securitySettingsActivity, Context context, String str) {
        this.a = securitySettingsActivity;
        this.b = context;
        this.c = str;
    }

    protected void onPreExecute() {
        this.a.a(this.a.getString(2131363003));
    }

    public bel a(Void... voidArr) {
        return bei.a(this.b, this.c);
    }

    public void a(bel bel) {
        if (bel == null) {
            this.a.a();
            ((CheckBoxPreference) this.a.findPreference("login_verification")).setChecked(false);
            this.a.showDialog(3);
        } else if (this.a.g) {
            this.a.b(new bdy(this.b, this.a.k().b(this.c), bel), 1);
        }
    }
}
