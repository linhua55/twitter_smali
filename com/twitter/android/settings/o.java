package com.twitter.android.settings;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.twitter.library.client.l;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.bk;
import com.twitter.library.provider.cf;
import com.twitter.library.provider.ck;
import com.twitter.library.util.b;

/* compiled from: Twttr */
class o extends AsyncTask<Void, Boolean, Void> {
    final /* synthetic */ NotificationsActivity a;
    private final String b;
    private final boolean c;
    private boolean d;
    private int e;
    private String f;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Void) obj);
    }

    o(NotificationsActivity notificationsActivity, String str) {
        this.a = notificationsActivity;
        this.b = str;
        this.c = ContentResolver.getMasterSyncAutomatically();
    }

    protected void onPreExecute() {
        this.a.i.setEnabled(this.c);
    }

    protected Void a(Void... voidArr) {
        if (this.a.c) {
            publishProgress(new Boolean[]{Boolean.valueOf(PushRegistration.d(this.a, this.b))});
        }
        String str = this.b;
        Cursor query = this.a.getContentResolver().query(Uri.withAppendedPath(bk.a, str), new String[]{"interval"}, null, null, null);
        int i = 1440;
        if (query != null) {
            if (query.moveToFirst() && !query.isNull(0)) {
                i = query.getInt(0);
            }
            query.close();
        }
        this.e = i;
        this.d = b.a(b.b(str), ck.c);
        this.f = new l(this.a, str).getString(cf.a, null);
        return null;
    }

    protected void a(Void voidR) {
        if (!this.a.isFinishing()) {
            this.a.i.setChecked(this.d);
            if (!this.c) {
                this.a.i.setSummary(2131363744);
            }
            this.a.j.setValue(String.valueOf(this.e));
            this.a.f = this.d;
            this.a.g = this.e;
            if (!this.a.h) {
                if (this.f != null) {
                    this.a.k.setValue(this.f);
                }
                this.a.c(this.f);
            }
        }
    }
}
