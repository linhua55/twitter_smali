package com.twitter.android.composer;

import android.widget.EditText;
import to;

/* compiled from: Twttr */
public class bs {
    private final to a;
    private final bv b;

    private void a(java.lang.CharSequence r8, int r9, int r10) {
        /* JADX: method processing error */
/*
        Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.ssa.SSATransform.placePhi(SSATransform.java:82)
	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:50)
	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r7 = this;
        r4 = 33;
        r2 = 0;
        r0 = r9 + r10;
        r1 = r9 + -1;
        r1 = java.lang.Math.max(r2, r1);
        r3 = r8.length();
        r0 = r0 + 1;
        r0 = java.lang.Math.min(r3, r0);
        r8 = (android.text.Spannable) r8;
        r3 = new java.lang.Object;
        r3.<init>();
        r8.setSpan(r3, r1, r0, r4);
        r4 = com.twitter.android.composer.bu.class;	 Catch:{ all -> 0x0069 }
        r0 = r8.getSpans(r1, r0, r4);	 Catch:{ all -> 0x0069 }
        r0 = (com.twitter.android.composer.bu[]) r0;	 Catch:{ all -> 0x0069 }
        r4 = r0.length;	 Catch:{ all -> 0x0069 }
    L_0x0028:
        if (r2 >= r4) goto L_0x006e;	 Catch:{ all -> 0x0069 }
    L_0x002a:
        r5 = r0[r2];	 Catch:{ all -> 0x0069 }
        r6 = r7.b;	 Catch:{ all -> 0x0069 }
        r6.a(r5);	 Catch:{ all -> 0x0069 }
        r8.removeSpan(r5);	 Catch:{ all -> 0x0069 }
        r2 = r2 + 1;	 Catch:{ all -> 0x0069 }
        goto L_0x0028;	 Catch:{ all -> 0x0069 }
    L_0x0037:
        r1 = r8.getSpanEnd(r3);	 Catch:{ all -> 0x0069 }
        if (r0 >= r1) goto L_0x0065;	 Catch:{ all -> 0x0069 }
    L_0x003d:
        r1 = r7.a;	 Catch:{ all -> 0x0069 }
        r2 = r0 + 1;	 Catch:{ all -> 0x0069 }
        r1 = r1.a_(r8, r2);	 Catch:{ all -> 0x0069 }
        if (r1 == 0) goto L_0x0062;	 Catch:{ all -> 0x0069 }
    L_0x0047:
        r0 = new com.twitter.android.composer.bu;	 Catch:{ all -> 0x0069 }
        r2 = 0;	 Catch:{ all -> 0x0069 }
        r0.<init>(r2);	 Catch:{ all -> 0x0069 }
        r2 = r1.a;	 Catch:{ all -> 0x0069 }
        r1 = r1.b;	 Catch:{ all -> 0x0069 }
        r4 = 33;	 Catch:{ all -> 0x0069 }
        r8.setSpan(r0, r2, r1, r4);	 Catch:{ all -> 0x0069 }
        r1 = r7.b;	 Catch:{ all -> 0x0069 }
        r1.b(r0);	 Catch:{ all -> 0x0069 }
        r0 = r8.getSpanEnd(r0);	 Catch:{ all -> 0x0069 }
        r0 = r0 + 1;
        goto L_0x0037;
    L_0x0062:
        r0 = r0 + 1;
        goto L_0x0037;
    L_0x0065:
        r8.removeSpan(r3);
        return;
    L_0x0069:
        r0 = move-exception;
        r8.removeSpan(r3);
        throw r0;
    L_0x006e:
        r0 = r1;
        goto L_0x0037;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.composer.bs.a(java.lang.CharSequence, int, int):void");
    }

    public bs(to toVar, bv bvVar) {
        this.b = bvVar;
        this.a = toVar;
    }

    public void a(EditText editText) {
        editText.addTextChangedListener(new bt(this));
    }
}
