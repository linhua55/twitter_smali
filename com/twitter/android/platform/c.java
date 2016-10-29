package com.twitter.android.platform;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.android.util.AppEventTrack;

/* compiled from: Twttr */
class c extends AsyncTask<String, Void, Void> {
    private final Context a;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    c(Context context) {
        this.a = context;
    }

    protected Void a(String... strArr) {
        InstallReferralReceiver.a(this.a, strArr[0]);
        AppEventTrack.b(this.a, "com.android.vending.INSTALL_REFERRER");
        return null;
    }
}
