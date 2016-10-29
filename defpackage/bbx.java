package defpackage;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: Twttr */
/* renamed from: bbx */
public class bbx {
    protected final int a;
    protected final Context b;
    protected AttributeSet c;

    public bbx(Context context, int i) {
        this.b = context;
        this.a = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r10 = this;
        r5 = 0;
        r3 = 1;
        r7 = 0;
        r0 = r10.b;
        r0 = r0.getResources();	 Catch:{ XmlPullParserException -> 0x00f8, IOException -> 0x00f4, all -> 0x00f0 }
        r1 = r10.a;	 Catch:{ XmlPullParserException -> 0x00f8, IOException -> 0x00f4, all -> 0x00f0 }
        r4 = r0.getLayout(r1);	 Catch:{ XmlPullParserException -> 0x00f8, IOException -> 0x00f4, all -> 0x00f0 }
        r0 = android.util.Xml.asAttributeSet(r4);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r10.c = r0;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r0 = r4.getEventType();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x0019:
        r1 = 2;
        if (r0 != r1) goto L_0x006d;
    L_0x001c:
        r0 = r4.getName();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1 = "menu";
        r1 = r0.equals(r1);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r1 == 0) goto L_0x0040;
    L_0x0029:
        r0 = r4.next();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x002d:
        r8 = r7;
        r2 = r7;
        r1 = r0;
        r0 = r5;
    L_0x0031:
        if (r8 != 0) goto L_0x00ea;
    L_0x0033:
        switch(r1) {
            case 1: goto L_0x00de;
            case 2: goto L_0x0074;
            case 3: goto L_0x00b0;
            default: goto L_0x0036;
        };	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x0036:
        r1 = r0;
        r0 = r8;
    L_0x0038:
        r6 = r4.next();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r8 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x0031;
    L_0x0040:
        r1 = new java.lang.RuntimeException;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r2 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r2.<init>();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r3 = "Expecting menu, got ";
        r2 = r2.append(r3);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r0 = r2.append(r0);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r0 = r0.toString();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1.<init>(r0);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        throw r1;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x005a:
        r0 = move-exception;
        r1 = r4;
    L_0x005c:
        r4 = r1;
    L_0x005d:
        r1 = new android.view.InflateException;	 Catch:{ all -> 0x0066 }
        r2 = "Error inflating menu items";
        r1.<init>(r2, r0);	 Catch:{ all -> 0x0066 }
        throw r1;	 Catch:{ all -> 0x0066 }
    L_0x0066:
        r0 = move-exception;
    L_0x0067:
        if (r4 == 0) goto L_0x006c;
    L_0x0069:
        r4.close();
    L_0x006c:
        throw r0;
    L_0x006d:
        r0 = r4.next();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r0 != r3) goto L_0x0019;
    L_0x0073:
        goto L_0x002d;
    L_0x0074:
        if (r2 == 0) goto L_0x0079;
    L_0x0076:
        r1 = r0;
        r0 = r8;
        goto L_0x0038;
    L_0x0079:
        r1 = r4.getName();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r1 == 0) goto L_0x0036;
    L_0x007f:
        r6 = -1;
        r9 = r1.hashCode();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        switch(r9) {
            case 3242771: goto L_0x0090;
            case 98629247: goto L_0x009b;
            default: goto L_0x0087;
        };	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x0087:
        switch(r6) {
            case 0: goto L_0x00a6;
            case 1: goto L_0x00ab;
            default: goto L_0x008a;
        };	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x008a:
        r0 = r1;
        r1 = r3;
    L_0x008c:
        r2 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0038;
    L_0x0090:
        r9 = "item";
        r9 = r1.equals(r9);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r9 == 0) goto L_0x0087;
    L_0x0099:
        r6 = r7;
        goto L_0x0087;
    L_0x009b:
        r9 = "group";
        r9 = r1.equals(r9);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r9 == 0) goto L_0x0087;
    L_0x00a4:
        r6 = r3;
        goto L_0x0087;
    L_0x00a6:
        r10.b();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1 = r2;
        goto L_0x008c;
    L_0x00ab:
        r10.c();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1 = r2;
        goto L_0x008c;
    L_0x00b0:
        r1 = r4.getName();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r2 == 0) goto L_0x00c1;
    L_0x00b6:
        r6 = r1.equals(r0);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r6 == 0) goto L_0x00c1;
    L_0x00bc:
        r0 = r8;
        r1 = r5;
        r2 = r7;
        goto L_0x0038;
    L_0x00c1:
        r6 = "group";
        r6 = r1.equals(r6);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r6 == 0) goto L_0x00d1;
    L_0x00ca:
        r10.d();	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1 = r0;
        r0 = r8;
        goto L_0x0038;
    L_0x00d1:
        r6 = "menu";
        r1 = r1.equals(r6);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        if (r1 == 0) goto L_0x0036;
    L_0x00da:
        r1 = r0;
        r0 = r3;
        goto L_0x0038;
    L_0x00de:
        r0 = new java.lang.RuntimeException;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        r1 = "Unexpected end of document";
        r0.<init>(r1);	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
        throw r0;	 Catch:{ XmlPullParserException -> 0x005a, IOException -> 0x00e7 }
    L_0x00e7:
        r0 = move-exception;
        goto L_0x005d;
    L_0x00ea:
        if (r4 == 0) goto L_0x00ef;
    L_0x00ec:
        r4.close();
    L_0x00ef:
        return;
    L_0x00f0:
        r0 = move-exception;
        r4 = r5;
        goto L_0x0067;
    L_0x00f4:
        r0 = move-exception;
        r4 = r5;
        goto L_0x005d;
    L_0x00f8:
        r0 = move-exception;
        r1 = r5;
        goto L_0x005c;
        */
        throw new UnsupportedOperationException("Method not decompiled: bbx.a():void");
    }

    protected void b() {
    }

    protected void c() {
    }

    protected void d() {
    }
}
