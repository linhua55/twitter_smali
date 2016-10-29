package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import dbv;
import tv.periscope.android.library.PeriscopeInterstitialActivity;

/* compiled from: Twttr */
/* renamed from: dbt */
final class dbt implements dbw {
    final /* synthetic */ boolean a;
    final /* synthetic */ dbv b;
    final /* synthetic */ Context c;

    dbt(boolean z, dbv dbv, Context context) {
        this.a = z;
        this.b = dbv;
        this.c = context;
    }

    public void a(Uri uri) {
        if (this.a) {
            this.b.a(new Intent("android.intent.action.VIEW", uri));
            return;
        }
        Intent intent = new Intent(this.c, PeriscopeInterstitialActivity.class);
        intent.putExtra("create_broadcast", uri);
        this.b.a(intent);
    }
}
