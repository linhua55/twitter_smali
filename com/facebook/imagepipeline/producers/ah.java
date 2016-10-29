package com.facebook.imagepipeline.producers;

/* compiled from: Twttr */
class ah implements Runnable {
    final /* synthetic */ af a;
    final /* synthetic */ bk b;
    final /* synthetic */ ag c;

    ah(ag agVar, af afVar, bk bkVar) {
        this.c = agVar;
        this.a = afVar;
        this.b = bkVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r6 = this;
        r4 = 0;
        r0 = r6.a;
        r0 = r0.e();
        r1 = r0.getScheme();
        r0 = r6.a;
        r0 = r0.e();
        r0 = r0.toString();
        r2 = r1;
        r1 = r4;
    L_0x0017:
        r3 = new java.net.URL;	 Catch:{ Exception -> 0x0072 }
        r3.<init>(r0);	 Catch:{ Exception -> 0x0072 }
        r0 = r3.openConnection();	 Catch:{ Exception -> 0x0072 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x0072 }
        r1 = "Location";
        r1 = r0.getHeaderField(r1);	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        if (r1 != 0) goto L_0x0044;
    L_0x002b:
        r3 = r4;
    L_0x002c:
        if (r1 == 0) goto L_0x0034;
    L_0x002e:
        r2 = r3.equals(r2);	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        if (r2 == 0) goto L_0x004d;
    L_0x0034:
        r1 = r0.getInputStream();	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        r2 = r6.b;	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        r3 = -1;
        r2.a(r1, r3);	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        if (r0 == 0) goto L_0x0043;
    L_0x0040:
        r0.disconnect();
    L_0x0043:
        return;
    L_0x0044:
        r3 = android.net.Uri.parse(r1);	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        r3 = r3.getScheme();	 Catch:{ Exception -> 0x0057, all -> 0x0066 }
        goto L_0x002c;
    L_0x004d:
        if (r0 == 0) goto L_0x0052;
    L_0x004f:
        r0.disconnect();
    L_0x0052:
        r2 = r3;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x0017;
    L_0x0057:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x005b:
        r2 = r6.b;	 Catch:{ all -> 0x0070 }
        r2.a(r0);	 Catch:{ all -> 0x0070 }
        if (r1 == 0) goto L_0x0043;
    L_0x0062:
        r1.disconnect();
        goto L_0x0043;
    L_0x0066:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x006a:
        if (r1 == 0) goto L_0x006f;
    L_0x006c:
        r1.disconnect();
    L_0x006f:
        throw r0;
    L_0x0070:
        r0 = move-exception;
        goto L_0x006a;
    L_0x0072:
        r0 = move-exception;
        goto L_0x005b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.ah.run():void");
    }
}
