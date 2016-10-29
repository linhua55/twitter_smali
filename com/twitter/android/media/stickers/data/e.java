package com.twitter.android.media.stickers.data;

import android.content.SharedPreferences;
import com.twitter.database.model.j;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.di;
import com.twitter.util.collection.n;
import defpackage.bax;
import defpackage.cjy;
import defpackage.cka;
import java.util.Set;

/* compiled from: Twttr */
class e extends AsyncOperation<Void, cka> {
    private final di a;
    private final Set<Long> b;
    private final String c;
    private final SharedPreferences g;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected e(di diVar, Set<Long> set, String str, SharedPreferences sharedPreferences) {
        super("load_stickers");
        this.a = diVar;
        this.b = set;
        this.c = str;
        this.g = sharedPreferences;
    }

    protected defpackage.cka a() throws java.lang.InterruptedException {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:66)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r19 = this;
        r0 = r19;
        r2 = r0.a;
        r2 = r2.b();
        r3 = defpackage.bak.class;
        r3 = r2.a(r3);
        r3 = r3.f();
        r4 = defpackage.baw.class;
        r2 = r2.a(r4);
        r13 = r2.f();
        r14 = r3.c();
        r2 = r14.a();
        if (r2 != 0) goto L_0x002b;
    L_0x0026:
        r14.close();
        r2 = 0;
    L_0x002a:
        return r2;
    L_0x002b:
        r15 = com.twitter.util.collection.n.d();
        r16 = com.twitter.util.collection.n.d();
        r0 = r19;
        r2 = r0.b;
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        if (r2 != 0) goto L_0x00a4;
    L_0x003d:
        r2 = new com.twitter.database.model.i;
        r2.<init>();
        r3 = "stickers__id";
        r0 = r19;
        r4 = r0.b;
        r3 = auc.a(r3, r4);
        r2 = r2.a(r3);
        r3 = "stickers__id";
        r2 = r2.c(r3);
        r2 = r2.a();
        r3 = r13.a(r2);
        r4 = new android.support.v4.util.LongSparseArray;	 Catch:{ all -> 0x0091 }
        r2 = r3.a();	 Catch:{ all -> 0x0091 }
        r4.<init>(r2);	 Catch:{ all -> 0x0091 }
    L_0x0069:
        r2 = r3.c();	 Catch:{ all -> 0x0091 }
        if (r2 == 0) goto L_0x0096;	 Catch:{ all -> 0x0091 }
    L_0x006f:
        r2 = r3.a;	 Catch:{ all -> 0x0091 }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x0091 }
        r2 = r2.o();	 Catch:{ all -> 0x0091 }
        if (r2 == 0) goto L_0x0069;	 Catch:{ all -> 0x0091 }
    L_0x0079:
        r2 = r3.a;	 Catch:{ all -> 0x0091 }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x0091 }
        r6 = r2.a();	 Catch:{ all -> 0x0091 }
        r0 = r19;	 Catch:{ all -> 0x0091 }
        r2 = r0.a(r6, r3);	 Catch:{ all -> 0x0091 }
        r2 = r2.q();	 Catch:{ all -> 0x0091 }
        r2 = (cjw) r2;	 Catch:{ all -> 0x0091 }
        r4.put(r6, r2);	 Catch:{ all -> 0x0091 }
        goto L_0x0069;
    L_0x0091:
        r2 = move-exception;
        r3.close();
        throw r2;
    L_0x0096:
        r0 = r19;	 Catch:{ all -> 0x0091 }
        r2 = r0.b;	 Catch:{ all -> 0x0091 }
        r2 = com.twitter.android.media.stickers.data.a.b(r4, r2);	 Catch:{ all -> 0x0091 }
        r15.c(r2);	 Catch:{ all -> 0x0091 }
        r3.close();
    L_0x00a4:
        r0 = r19;	 Catch:{ all -> 0x0122 }
        r2 = r0.g;	 Catch:{ all -> 0x0122 }
        r0 = r19;	 Catch:{ all -> 0x0122 }
        r3 = r0.c;	 Catch:{ all -> 0x0122 }
        r17 = com.twitter.android.media.stickers.data.a.b(r2, r3);	 Catch:{ all -> 0x0122 }
    L_0x00b0:
        r2 = r14.c();	 Catch:{ all -> 0x0122 }
        if (r2 == 0) goto L_0x01ea;	 Catch:{ all -> 0x0122 }
    L_0x00b6:
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r4 = r2.b();	 Catch:{ all -> 0x0122 }
        r2 = "category_id";	 Catch:{ all -> 0x0122 }
        r3 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x0122 }
        r3 = auc.b(r2, r3);	 Catch:{ all -> 0x0122 }
        r2 = new com.twitter.database.model.i;	 Catch:{ all -> 0x0122 }
        r2.<init>();	 Catch:{ all -> 0x0122 }
        r6 = 2;	 Catch:{ all -> 0x0122 }
        r6 = new java.lang.String[r6];	 Catch:{ all -> 0x0122 }
        r7 = 0;	 Catch:{ all -> 0x0122 }
        r6[r7] = r3;	 Catch:{ all -> 0x0122 }
        r7 = 1;	 Catch:{ all -> 0x0122 }
        r8 = "stickers_variant_item_id";	 Catch:{ all -> 0x0122 }
        r8 = auc.a(r8);	 Catch:{ all -> 0x0122 }
        r6[r7] = r8;	 Catch:{ all -> 0x0122 }
        r6 = auc.a(r6);	 Catch:{ all -> 0x0122 }
        r2 = r2.a(r6);	 Catch:{ all -> 0x0122 }
        r2 = r2.a();	 Catch:{ all -> 0x0122 }
        r6 = r13.a(r2);	 Catch:{ all -> 0x0122 }
        r7 = new java.util.LinkedHashMap;	 Catch:{ all -> 0x0122 }
        r7.<init>();	 Catch:{ all -> 0x0122 }
    L_0x00f3:
        r2 = r6.c();	 Catch:{ all -> 0x011d }
        if (r2 == 0) goto L_0x0127;	 Catch:{ all -> 0x011d }
    L_0x00f9:
        r2 = r6.a;	 Catch:{ all -> 0x011d }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x011d }
        r2 = r2.o();	 Catch:{ all -> 0x011d }
        if (r2 == 0) goto L_0x00f3;	 Catch:{ all -> 0x011d }
    L_0x0103:
        r2 = r6.a;	 Catch:{ all -> 0x011d }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x011d }
        r8 = r2.a();	 Catch:{ all -> 0x011d }
        r2 = java.lang.Long.valueOf(r8);	 Catch:{ all -> 0x011d }
        r0 = r19;	 Catch:{ all -> 0x011d }
        r8 = r0.a(r8, r6);	 Catch:{ all -> 0x011d }
        r8 = r8.q();	 Catch:{ all -> 0x011d }
        r7.put(r2, r8);	 Catch:{ all -> 0x011d }
        goto L_0x00f3;
    L_0x011d:
        r2 = move-exception;
        r6.close();	 Catch:{ all -> 0x0122 }
        throw r2;	 Catch:{ all -> 0x0122 }
    L_0x0122:
        r2 = move-exception;
        r14.close();
        throw r2;
    L_0x0127:
        r6.close();	 Catch:{ all -> 0x0122 }
        r2 = 2;	 Catch:{ all -> 0x0122 }
        r2 = new java.lang.String[r2];	 Catch:{ all -> 0x0122 }
        r6 = 0;	 Catch:{ all -> 0x0122 }
        r2[r6] = r3;	 Catch:{ all -> 0x0122 }
        r3 = 1;	 Catch:{ all -> 0x0122 }
        r6 = "stickers_variant_item_id";	 Catch:{ all -> 0x0122 }
        r6 = auc.b(r6);	 Catch:{ all -> 0x0122 }
        r2[r3] = r6;	 Catch:{ all -> 0x0122 }
        r2 = auc.a(r2);	 Catch:{ all -> 0x0122 }
        r3 = 0;	 Catch:{ all -> 0x0122 }
        r3 = new java.lang.String[r3];	 Catch:{ all -> 0x0122 }
        r6 = r13.a(r2, r3);	 Catch:{ all -> 0x0122 }
        r8 = new android.support.v4.util.LongSparseArray;	 Catch:{ all -> 0x0122 }
        r8.<init>();	 Catch:{ all -> 0x0122 }
    L_0x014a:
        r2 = r6.c();	 Catch:{ all -> 0x019c }
        if (r2 == 0) goto L_0x01a1;	 Catch:{ all -> 0x019c }
    L_0x0150:
        r2 = r6.a;	 Catch:{ all -> 0x019c }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x019c }
        r10 = r2.f();	 Catch:{ all -> 0x019c }
        r2 = r8.get(r10);	 Catch:{ all -> 0x019c }
        r2 = (java.util.HashMap) r2;	 Catch:{ all -> 0x019c }
        if (r2 != 0) goto L_0x0201;	 Catch:{ all -> 0x019c }
    L_0x0160:
        r2 = new java.util.LinkedHashMap;	 Catch:{ all -> 0x019c }
        r2.<init>();	 Catch:{ all -> 0x019c }
        r3 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x019c }
        r9 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x019c }
        r9 = r7.get(r9);	 Catch:{ all -> 0x019c }
        r2.put(r3, r9);	 Catch:{ all -> 0x019c }
        r8.put(r10, r2);	 Catch:{ all -> 0x019c }
        r3 = r2;	 Catch:{ all -> 0x019c }
    L_0x0178:
        r2 = r6.a;	 Catch:{ all -> 0x019c }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x019c }
        r2 = r2.o();	 Catch:{ all -> 0x019c }
        if (r2 == 0) goto L_0x014a;	 Catch:{ all -> 0x019c }
    L_0x0182:
        r2 = r6.a;	 Catch:{ all -> 0x019c }
        r2 = (defpackage.bax) r2;	 Catch:{ all -> 0x019c }
        r10 = r2.a();	 Catch:{ all -> 0x019c }
        r2 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x019c }
        r0 = r19;	 Catch:{ all -> 0x019c }
        r9 = r0.a(r10, r6);	 Catch:{ all -> 0x019c }
        r9 = r9.q();	 Catch:{ all -> 0x019c }
        r3.put(r2, r9);	 Catch:{ all -> 0x019c }
        goto L_0x014a;
    L_0x019c:
        r2 = move-exception;
        r6.close();	 Catch:{ all -> 0x0122 }
        throw r2;	 Catch:{ all -> 0x0122 }
    L_0x01a1:
        r6.close();	 Catch:{ all -> 0x0122 }
        r0 = r17;	 Catch:{ all -> 0x0122 }
        r8 = com.twitter.android.media.stickers.data.a.b(r7, r8, r0);	 Catch:{ all -> 0x0122 }
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r18 = r2.f();	 Catch:{ all -> 0x0122 }
        r3 = new ckp;	 Catch:{ all -> 0x0122 }
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r6 = r2.e();	 Catch:{ all -> 0x0122 }
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r9 = r2.d();	 Catch:{ all -> 0x0122 }
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r10 = r2.c();	 Catch:{ all -> 0x0122 }
        if (r18 == 0) goto L_0x01e3;	 Catch:{ all -> 0x0122 }
    L_0x01ce:
        r11 = 2;	 Catch:{ all -> 0x0122 }
    L_0x01cf:
        r2 = r14.a;	 Catch:{ all -> 0x0122 }
        r2 = (defpackage.bal) r2;	 Catch:{ all -> 0x0122 }
        r12 = r2.g();	 Catch:{ all -> 0x0122 }
        r3.<init>(r4, r6, r8, r9, r10, r11, r12);	 Catch:{ all -> 0x0122 }
        if (r18 == 0) goto L_0x01e5;	 Catch:{ all -> 0x0122 }
    L_0x01dc:
        r0 = r16;	 Catch:{ all -> 0x0122 }
        r0.c(r3);	 Catch:{ all -> 0x0122 }
        goto L_0x00b0;	 Catch:{ all -> 0x0122 }
    L_0x01e3:
        r11 = 0;	 Catch:{ all -> 0x0122 }
        goto L_0x01cf;	 Catch:{ all -> 0x0122 }
    L_0x01e5:
        r15.c(r3);	 Catch:{ all -> 0x0122 }
        goto L_0x00b0;
    L_0x01ea:
        r14.close();
        r4 = new cka;
        r2 = r15.q();
        r2 = (java.util.List) r2;
        r3 = r16.q();
        r3 = (java.util.List) r3;
        r4.<init>(r2, r3);
        r2 = r4;
        goto L_0x002a;
    L_0x0201:
        r3 = r2;
        goto L_0x0178;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.media.stickers.data.e.a():cka");
    }

    private cjy a(long j, j<bax> jVar) {
        return new cjy().c(j).a(((bax) jVar.a).b()).f(((bax) jVar.a).l()).g(((bax) jVar.a).m()).h(((bax) jVar.a).n()).b(((bax) jVar.a).g()).a(((bax) jVar.a).d()).e(((bax) jVar.a).e()).d(((bax) jVar.a).h()).c(((bax) jVar.a).j()).b(((bax) jVar.a).i()).a(((bax) jVar.a).p()).d(((bax) jVar.a).k()).e(((bax) jVar.a).c()).a(((bax) jVar.a).o());
    }

    protected cka b() {
        return new cka(n.g(), n.g());
    }
}
