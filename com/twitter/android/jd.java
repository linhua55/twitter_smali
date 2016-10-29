package com.twitter.android;

import android.content.Context;
import android.os.AsyncTask;
import bbu;
import bei;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bej;
import defpackage.bep;

/* compiled from: Twttr */
class jd extends AsyncTask<Void, Void, bej> {
    final /* synthetic */ LoginVerificationFragment a;
    private final Context b;
    private final String c;
    private final String d;
    private final String e;

    public /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    public /* synthetic */ void onPostExecute(Object obj) {
        a((bej) obj);
    }

    jd(LoginVerificationFragment loginVerificationFragment, Context context, String str, String str2, String str3) {
        this.a = loginVerificationFragment;
        this.b = context.getApplicationContext();
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    protected void onPreExecute() {
        this.a.a(this.a.getString(2131363010));
    }

    public bej a(Void... voidArr) {
        return bei.a(this.b, this.c, this.d, this.e);
    }

    public void a(bej bej) {
        if (bej == null) {
            this.a.m();
            bbu.a(new TwitterScribeLog(LoginVerificationFragment.b(this.a).g()).b(new String[]{"login_verification::request:reject:error"}));
            LoginVerificationFragment.a(this.a, this.c);
            return;
        }
        LoginVerificationFragment.b(this.a, new bep(this.a.getActivity(), LoginVerificationFragment.b(this.a), bej), 2, 0);
    }
}
