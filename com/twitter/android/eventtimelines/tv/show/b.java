package com.twitter.android.eventtimelines.tv.show;

import java.util.Locale;

/* compiled from: Twttr */
public class b implements a {
    final Locale a;

    public b(Locale locale) {
        this.a = locale;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String a(com.twitter.model.eventtimelines.TvShow r10, com.twitter.android.eventtimelines.tv.show.s r11) {
        /*
        r9 = this;
        r8 = 499; // 0x1f3 float:6.99E-43 double:2.465E-321;
        r1 = 0;
        r0 = r9.a(r11);
        r2 = r10.g;
        if (r2 == 0) goto L_0x0013;
    L_0x000b:
        r2 = r10.g;
        r2 = r2.isEmpty();
        if (r2 == 0) goto L_0x0014;
    L_0x0013:
        return r0;
    L_0x0014:
        r2 = new java.lang.StringBuilder;
        r3 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r2.<init>(r3);
        r2.append(r0);
        r0 = " (";
        r2.append(r0);
        r0 = r10.g;
        r0 = r0.size();
        r3 = new java.lang.String[r0];
        r0 = r10.g;
        r0.toArray(r3);
        r4 = r3.length;
        r0 = r1;
    L_0x0033:
        if (r0 >= r4) goto L_0x006f;
    L_0x0035:
        r5 = "from:%s";
        r6 = 1;
        r6 = new java.lang.Object[r6];
        r7 = r3[r0];
        r6[r1] = r7;
        r5 = java.lang.String.format(r5, r6);
        r6 = r2.length();
        r7 = r5.length();
        r6 = r6 + r7;
        if (r6 >= r8) goto L_0x0051;
    L_0x004e:
        r2.append(r5);
    L_0x0051:
        r5 = r0 + 1;
        if (r5 >= r4) goto L_0x006f;
    L_0x0055:
        r5 = r2.length();
        r5 = r5 + 4;
        r6 = r0 + 1;
        r6 = r3[r6];
        r6 = r6.length();
        r5 = r5 + r6;
        if (r5 >= r8) goto L_0x006f;
    L_0x0066:
        r5 = " OR ";
        r2.append(r5);
        r0 = r0 + 1;
        goto L_0x0033;
    L_0x006f:
        r0 = ")";
        r2.append(r0);
        r0 = r2.toString();
        goto L_0x0013;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.eventtimelines.tv.show.b.a(com.twitter.model.eventtimelines.TvShow, com.twitter.android.eventtimelines.tv.show.s):java.lang.String");
    }

    public String a(s sVar) {
        return String.format("entity_id:%s filter:safe lang:%s exclude:replies", new Object[]{sVar.a(), this.a.getLanguage()});
    }
}
