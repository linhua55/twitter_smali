package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;

public class fx extends qb {
    private final String a;
    private final String b;
    private final int c;
    private final String d;
    private final sz e;

    public fx(sz szVar, String str) {
        this.a = "play.google.com";
        this.b = "market";
        this.c = 10;
        this.e = szVar;
        this.d = str;
    }

    public Intent a(String str) {
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(parse);
        return intent;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r8 = this;
        r0 = 0;
        r2 = r8.d;
    L_0x0003:
        r1 = 10;
        if (r0 >= r1) goto L_0x0125;
    L_0x0007:
        r4 = r0 + 1;
        r0 = new java.net.URL;	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r0.<init>(r2);	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r1 = "play.google.com";
        r3 = r0.getHost();	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r1 = r1.equalsIgnoreCase(r3);	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        if (r1 == 0) goto L_0x002e;
    L_0x001b:
        r0 = r2;
    L_0x001c:
        r0 = r8.a(r0);
        r1 = com.google.android.gms.ads.internal.ar.e();
        r2 = r8.e;
        r2 = r2.getContext();
        r1.a(r2, r0);
        return;
    L_0x002e:
        r1 = "market";
        r3 = r0.getProtocol();	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r1 = r1.equalsIgnoreCase(r3);	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        if (r1 == 0) goto L_0x003d;
    L_0x003b:
        r0 = r2;
        goto L_0x001c;
    L_0x003d:
        r0 = r0.openConnection();	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r1 = com.google.android.gms.ads.internal.ar.e();	 Catch:{ all -> 0x00ba }
        r3 = r8.e;	 Catch:{ all -> 0x00ba }
        r3 = r3.getContext();	 Catch:{ all -> 0x00ba }
        r5 = r8.e;	 Catch:{ all -> 0x00ba }
        r5 = r5.o();	 Catch:{ all -> 0x00ba }
        r5 = r5.b;	 Catch:{ all -> 0x00ba }
        r6 = 0;
        r1.a(r3, r5, r6, r0);	 Catch:{ all -> 0x00ba }
        r1 = r0.getResponseCode();	 Catch:{ all -> 0x00ba }
        r5 = r0.getHeaderFields();	 Catch:{ all -> 0x00ba }
        r3 = "";
        r6 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r1 < r6) goto L_0x0122;
    L_0x0068:
        r6 = 399; // 0x18f float:5.59E-43 double:1.97E-321;
        if (r1 > r6) goto L_0x0122;
    L_0x006c:
        r1 = 0;
        r6 = "Location";
        r6 = r5.containsKey(r6);	 Catch:{ all -> 0x00ba }
        if (r6 == 0) goto L_0x00a0;
    L_0x0076:
        r1 = "Location";
        r1 = r5.get(r1);	 Catch:{ all -> 0x00ba }
        r1 = (java.util.List) r1;	 Catch:{ all -> 0x00ba }
    L_0x007f:
        if (r1 == 0) goto L_0x0122;
    L_0x0081:
        r5 = r1.size();	 Catch:{ all -> 0x00ba }
        if (r5 <= 0) goto L_0x0122;
    L_0x0087:
        r3 = 0;
        r1 = r1.get(r3);	 Catch:{ all -> 0x00ba }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x00ba }
    L_0x008e:
        r3 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x00ba }
        if (r3 == 0) goto L_0x00b3;
    L_0x0094:
        r1 = "Arrived at landing page, this ideally should not happen. Will open it in browser.";
        com.google.android.gms.internal.qd.d(r1);	 Catch:{ all -> 0x00ba }
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        r0 = r2;
        goto L_0x001c;
    L_0x00a0:
        r6 = "location";
        r6 = r5.containsKey(r6);	 Catch:{ all -> 0x00ba }
        if (r6 == 0) goto L_0x007f;
    L_0x00a9:
        r1 = "location";
        r1 = r5.get(r1);	 Catch:{ all -> 0x00ba }
        r1 = (java.util.List) r1;	 Catch:{ all -> 0x00ba }
        goto L_0x007f;
    L_0x00b3:
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x011d, IOException -> 0x0118, RuntimeException -> 0x0113 }
        r0 = r4;
        r2 = r1;
        goto L_0x0003;
    L_0x00ba:
        r1 = move-exception;
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
        throw r1;	 Catch:{ IndexOutOfBoundsException -> 0x00bf, IOException -> 0x00db, RuntimeException -> 0x00f7 }
    L_0x00bf:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x00c2:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Error while parsing ping URL: ";
        r2 = r2.append(r3);
        r2 = r2.append(r0);
        r2 = r2.toString();
        com.google.android.gms.internal.qd.d(r2, r1);
        goto L_0x001c;
    L_0x00db:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x00de:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Error while pinging URL: ";
        r2 = r2.append(r3);
        r2 = r2.append(r0);
        r2 = r2.toString();
        com.google.android.gms.internal.qd.d(r2, r1);
        goto L_0x001c;
    L_0x00f7:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x00fa:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Error while pinging URL: ";
        r2 = r2.append(r3);
        r2 = r2.append(r0);
        r2 = r2.toString();
        com.google.android.gms.internal.qd.d(r2, r1);
        goto L_0x001c;
    L_0x0113:
        r0 = move-exception;
        r7 = r0;
        r0 = r1;
        r1 = r7;
        goto L_0x00fa;
    L_0x0118:
        r0 = move-exception;
        r7 = r0;
        r0 = r1;
        r1 = r7;
        goto L_0x00de;
    L_0x011d:
        r0 = move-exception;
        r7 = r0;
        r0 = r1;
        r1 = r7;
        goto L_0x00c2;
    L_0x0122:
        r1 = r3;
        goto L_0x008e;
    L_0x0125:
        r0 = r2;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.a():void");
    }

    public void b() {
    }
}
