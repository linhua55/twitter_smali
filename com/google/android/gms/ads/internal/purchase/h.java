package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.stats.b;
import com.google.android.gms.internal.my;
import com.google.android.gms.internal.oi;

@oi
public final class h extends my implements ServiceConnection {
    b a;
    private boolean b;
    private Context c;
    private int d;
    private Intent e;
    private g f;
    private String g;

    public h(Context context, String str, boolean z, int i, Intent intent, g gVar) {
        this.b = false;
        this.g = str;
        this.d = i;
        this.e = intent;
        this.b = z;
        this.c = context;
        this.f = gVar;
    }

    public boolean a() {
        return this.b;
    }

    public String b() {
        return this.g;
    }

    public Intent c() {
        return this.e;
    }

    public int d() {
        return this.d;
    }

    public void e() {
        int a = ar.o().a(this.e);
        if (this.d == -1 && a == 0) {
            this.a = new b(this.c);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            b.a().a(this.c, intent, this, 1);
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.ads.internal.util.client.b.c("In-app billing service connected.");
        this.a.a(iBinder);
        String b = ar.o().b(ar.o().b(this.e));
        if (b != null) {
            if (this.a.a(this.c.getPackageName(), b) == 0) {
                i.a(this.c).a(this.f);
            }
            b.a().a(this.c, this);
            this.a.a();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.ads.internal.util.client.b.c("In-app billing service disconnected.");
        this.a.a();
    }
}
