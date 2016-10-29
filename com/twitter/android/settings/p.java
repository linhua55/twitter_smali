package com.twitter.android.settings;

import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.preference.ListPreference;
import com.twitter.app.common.account.a;
import com.twitter.badge.LauncherIconBadgeUpdaterService;
import com.twitter.library.client.l;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.cf;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.e;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;
import defpackage.bbu;
import defpackage.bcs;

/* compiled from: Twttr */
class p extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ NotificationsActivity a;
    private final String b;
    private boolean c;
    private boolean d;
    private String e;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Void) obj);
    }

    p(NotificationsActivity notificationsActivity, String str) {
        this.a = notificationsActivity;
        this.b = str;
    }

    protected void onPreExecute() {
        super.onPreExecute();
        this.c = this.a.i.isChecked();
        this.d = this.a.f != this.c;
    }

    protected Void a(Void... voidArr) {
        Context applicationContext = this.a.getApplicationContext();
        String str = this.b;
        a b = b.b(str);
        if (b != null) {
            boolean z = this.c;
            boolean z2 = this.d;
            int parseInt = Integer.parseInt(((ListPreference) this.a.findPreference("polling_interval")).getValue());
            int i = this.a.g != parseInt ? 1 : 0;
            if (z2) {
                String str2;
                b.a(b, ck.c, z);
                if (z) {
                    str2 = "settings::::enable_sync";
                } else {
                    str2 = "settings::::disable_sync";
                }
                bbu.a(new TwitterScribeLog(this.a.a).b(str2));
            }
            boolean z3 = this.a.c;
            ContentValues contentValues = new ContentValues(4);
            contentValues.put("interval", Integer.valueOf(parseInt));
            e eVar = new e(applicationContext.getContentResolver());
            ar.a(applicationContext).a(str, contentValues, z3, eVar);
            eVar.a();
            if ((i != 0 || z2) && z) {
                TwitterDataSyncService.a(applicationContext);
            }
            this.a.f = z;
            this.a.g = parseInt;
            this.e = this.a.k.getValue();
            new l(applicationContext, this.b).a().a(cf.a, this.e).apply();
        }
        return null;
    }

    protected void a(Void voidR) {
        if (new com.twitter.badge.a(this.a.getResources().getStringArray(bcs.badge_behaviors_values)).c(this.e)) {
            LauncherIconBadgeUpdaterService.b(this.a);
        } else {
            LauncherIconBadgeUpdaterService.a(this.a);
        }
    }
}
