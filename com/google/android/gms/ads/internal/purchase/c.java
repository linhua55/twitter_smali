package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.qw;
import java.util.List;

@oi
public class c extends qb implements ServiceConnection {
    private final Object a;
    private boolean b;
    private Context c;
    private na d;
    private b e;
    private i f;
    private List<g> g;
    private n h;

    public c(Context context, na naVar, n nVar) {
        this(context, naVar, nVar, new b(context), i.a(context.getApplicationContext()));
    }

    c(Context context, na naVar, n nVar, b bVar, i iVar) {
        this.a = new Object();
        this.b = false;
        this.g = null;
        this.c = context;
        this.d = naVar;
        this.h = nVar;
        this.e = bVar;
        this.f = iVar;
        this.g = this.f.a(10);
    }

    private void a(long j) {
        do {
            if (!b(j)) {
                qd.e("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.b);
    }

    private boolean b(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.a.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            b.d("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    public void a() {
        synchronized (this.a) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            com.google.android.gms.common.stats.b.a().a(this.c, intent, this, 1);
            a(SystemClock.elapsedRealtime());
            com.google.android.gms.common.stats.b.a().a(this.c, this);
            this.e.a();
        }
    }

    protected void a(g gVar, String str, String str2) {
        Intent intent = new Intent();
        ar.o();
        intent.putExtra("RESPONSE_CODE", 0);
        ar.o();
        intent.putExtra("INAPP_PURCHASE_DATA", str);
        ar.o();
        intent.putExtra("INAPP_DATA_SIGNATURE", str2);
        qw.a.post(new d(this, gVar, intent));
    }

    public void b() {
        synchronized (this.a) {
            com.google.android.gms.common.stats.b.a().a(this.c, this);
            this.e.a();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void c() {
        /*
        r12 = this;
        r0 = r12.g;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0009;
    L_0x0008:
        return;
    L_0x0009:
        r6 = new java.util.HashMap;
        r6.<init>();
        r0 = r12.g;
        r1 = r0.iterator();
    L_0x0014:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0026;
    L_0x001a:
        r0 = r1.next();
        r0 = (com.google.android.gms.ads.internal.purchase.g) r0;
        r2 = r0.c;
        r6.put(r2, r0);
        goto L_0x0014;
    L_0x0026:
        r0 = 0;
    L_0x0027:
        r1 = r12.e;
        r2 = r12.c;
        r2 = r2.getPackageName();
        r0 = r1.b(r2, r0);
        if (r0 != 0) goto L_0x0055;
    L_0x0035:
        r0 = r6.keySet();
        r1 = r0.iterator();
    L_0x003d:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0008;
    L_0x0043:
        r0 = r1.next();
        r0 = (java.lang.String) r0;
        r2 = r12.f;
        r0 = r6.get(r0);
        r0 = (com.google.android.gms.ads.internal.purchase.g) r0;
        r2.a(r0);
        goto L_0x003d;
    L_0x0055:
        r1 = com.google.android.gms.ads.internal.ar.o();
        r1 = r1.a(r0);
        if (r1 != 0) goto L_0x0035;
    L_0x005f:
        r1 = "INAPP_PURCHASE_ITEM_LIST";
        r7 = r0.getStringArrayList(r1);
        r1 = "INAPP_PURCHASE_DATA_LIST";
        r8 = r0.getStringArrayList(r1);
        r1 = "INAPP_DATA_SIGNATURE_LIST";
        r9 = r0.getStringArrayList(r1);
        r1 = "INAPP_CONTINUATION_TOKEN";
        r5 = r0.getString(r1);
        r0 = 0;
        r4 = r0;
    L_0x007d:
        r0 = r7.size();
        if (r4 >= r0) goto L_0x00bf;
    L_0x0083:
        r0 = r7.get(r4);
        r0 = r6.containsKey(r0);
        if (r0 == 0) goto L_0x00bb;
    L_0x008d:
        r0 = r7.get(r4);
        r0 = (java.lang.String) r0;
        r1 = r8.get(r4);
        r1 = (java.lang.String) r1;
        r2 = r9.get(r4);
        r2 = (java.lang.String) r2;
        r3 = r6.get(r0);
        r3 = (com.google.android.gms.ads.internal.purchase.g) r3;
        r10 = com.google.android.gms.ads.internal.ar.o();
        r10 = r10.a(r1);
        r11 = r3.b;
        r10 = r11.equals(r10);
        if (r10 == 0) goto L_0x00bb;
    L_0x00b5:
        r12.a(r3, r1, r2);
        r6.remove(r0);
    L_0x00bb:
        r0 = r4 + 1;
        r4 = r0;
        goto L_0x007d;
    L_0x00bf:
        if (r5 == 0) goto L_0x0035;
    L_0x00c1:
        r0 = r6.isEmpty();
        if (r0 != 0) goto L_0x0035;
    L_0x00c7:
        r0 = r5;
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.c.c():void");
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.a) {
            this.e.a(iBinder);
            c();
            this.b = true;
            this.a.notify();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        b.c("In-app billing service disconnected.");
        this.e.a();
    }
}
