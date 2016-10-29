package defpackage;

import android.content.Context;
import com.twitter.library.api.timeline.ag;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: amj */
public class amj {
    private final Context a;
    private final amg b;

    public amj(Context context, amg amg) {
        this.a = context;
        this.b = amg;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.twitter.library.service.b a() {
        /*
        r19 = this;
        r0 = r19;
        r2 = r0.b;
        r2 = r2.a;
        r0 = r19;
        r3 = r0.b;
        r10 = r3.c;
        r0 = r19;
        r3 = r0.b;
        r6 = r3.h;
        r0 = r19;
        r3 = r0.b;
        r12 = r3.f;
        r0 = r19;
        r3 = r0.b;
        r14 = r3.g;
        r0 = r19;
        r3 = r0.b;
        r3 = r3.o;
        r0 = r19;
        r4 = r0.b;
        r8 = r4.d;
        r0 = r19;
        r4 = r0.b;
        r11 = r4.j;
        r0 = r19;
        r4 = r0.b;
        r4 = r4.k;
        r0 = r19;
        r5 = r0.b;
        r0 = r5.l;
        r16 = r0;
        r0 = r19;
        r5 = r0.b;
        r9 = r5.m;
        r0 = r19;
        r5 = r0.b;
        r0 = r5.p;
        r17 = r0;
        r18 = com.twitter.android.av.v.a();
        switch(r2) {
            case 0: goto L_0x0055;
            case 1: goto L_0x0133;
            case 2: goto L_0x00e1;
            case 5: goto L_0x015f;
            case 9: goto L_0x01c8;
            case 23: goto L_0x0172;
            case 24: goto L_0x0185;
            case 25: goto L_0x0198;
            case 27: goto L_0x01ab;
            case 28: goto L_0x01ed;
            case 30: goto L_0x01fa;
            default: goto L_0x0053;
        };
    L_0x0053:
        r2 = 0;
    L_0x0054:
        return r2;
    L_0x0055:
        r2 = r16.f();
        if (r2 != 0) goto L_0x005d;
    L_0x005b:
        r2 = 0;
        goto L_0x0054;
    L_0x005d:
        r2 = "prefetch_images_foreground_3518";
        r3 = 1;
        r3 = new java.lang.String[r3];
        r4 = 0;
        r5 = "fg_only";
        r3[r4] = r5;
        r2 = com.twitter.config.c.a(r2, r3);
        if (r2 != 0) goto L_0x0081;
    L_0x006f:
        r2 = "prefetch_images_background_3517";
        r3 = 1;
        r3 = new java.lang.String[r3];
        r4 = 0;
        r5 = "all";
        r3[r4] = r5;
        r2 = com.twitter.config.c.a(r2, r3);
        if (r2 == 0) goto L_0x00da;
    L_0x0081:
        r2 = com.twitter.util.telephony.TelephonyUtil.i();
        r2 = r2.c();
        if (r2 == 0) goto L_0x00da;
    L_0x008b:
        r2 = 1;
        r3 = r2;
    L_0x008d:
        r2 = new com.twitter.library.api.timeline.s;
        r0 = r19;
        r4 = r0.a;
        r5 = r16.f();
        r0 = r16;
        r2.<init>(r4, r0, r5, r9);
        r0 = r17;
        r2 = r2.a(r0);
        r2 = (com.twitter.library.api.timeline.s) r2;
        r0 = r19;
        r4 = r0.b;
        r4 = r4.n;
        r2 = r2.a(r4);
        r2 = r2.a(r14);
        r2 = r2.b(r3);
        r2 = r2.c(r10);
        r0 = r18;
        r2 = r2.f(r0);
        r3 = "scribe_event";
        r2 = r2.b(r3, r11);
        r2 = (com.twitter.library.api.timeline.s) r2;
        r0 = r19;
        r3 = r0.b;
        r3 = r3.b;
        r4 = 2;
        if (r3 != r4) goto L_0x00dd;
    L_0x00d2:
        r3 = "ptr";
    L_0x00d5:
        r2.b(r3);
        goto L_0x0054;
    L_0x00da:
        r2 = 0;
        r3 = r2;
        goto L_0x008d;
    L_0x00dd:
        r3 = "";
        goto L_0x00d5;
    L_0x00e1:
        if (r3 == 0) goto L_0x0127;
    L_0x00e3:
        r2 = 2;
        if (r9 != r2) goto L_0x011b;
    L_0x00e6:
        r0 = r19;
        r2 = r0.b;
        r8 = r2.q;
    L_0x00ec:
        r3 = new bnl;
        r0 = r19;
        r4 = r0.a;
        r5 = new com.twitter.library.service.ab;
        r0 = r16;
        r5.<init>(r0);
        r3.<init>(r4, r5, r6, r8);
    L_0x00fc:
        r0 = r19;
        r2 = r0.b;
        r4 = r2.e;
        r2 = r3.c(r4);
        r2 = r2.b(r12);
        r3 = 20;
        r2 = r2.c(r3);
        r3 = "scribe_event";
        r2 = r2.b(r3, r11);
        r2 = (com.twitter.library.service.b) r2;
        goto L_0x0054;
    L_0x011b:
        r2 = 3;
        if (r9 != r2) goto L_0x0125;
    L_0x011e:
        r0 = r19;
        r2 = r0.b;
        r8 = r2.r;
        goto L_0x00ec;
    L_0x0125:
        r8 = 0;
        goto L_0x00ec;
    L_0x0127:
        r3 = new com.twitter.library.api.timeline.m;
        r0 = r19;
        r2 = r0.a;
        r0 = r16;
        r3.<init>(r2, r0, r6);
        goto L_0x00fc;
    L_0x0133:
        r3 = new com.twitter.library.api.timeline.aa;
        r0 = r19;
        r4 = r0.a;
        r5 = r16;
        r3.<init>(r4, r5, r6, r8, r9);
        r0 = r17;
        r2 = r3.a(r0);
        r0 = r18;
        r2 = r2.f(r0);
        r2 = (com.twitter.library.api.timeline.aa) r2;
        r2 = r2.a(r14);
        r2 = r2.c(r10);
        r3 = "scribe_event";
        r2 = r2.b(r3, r11);
        r2 = (com.twitter.library.api.timeline.aa) r2;
        goto L_0x0054;
    L_0x015f:
        r2 = new com.twitter.library.api.timeline.y;
        r0 = r19;
        r3 = r0.a;
        r0 = r16;
        r2.<init>(r3, r0, r6);
        r0 = r19;
        r2 = r0.a(r2);
        goto L_0x0054;
    L_0x0172:
        r2 = new com.twitter.library.api.timeline.q;
        r0 = r19;
        r3 = r0.a;
        r0 = r16;
        r2.<init>(r3, r0, r6);
        r0 = r19;
        r2 = r0.a(r2);
        goto L_0x0054;
    L_0x0185:
        r2 = new com.twitter.library.api.timeline.r;
        r0 = r19;
        r3 = r0.a;
        r0 = r16;
        r2.<init>(r3, r0, r6);
        r0 = r19;
        r2 = r0.a(r2);
        goto L_0x0054;
    L_0x0198:
        r2 = new com.twitter.library.api.timeline.an;
        r0 = r19;
        r3 = r0.a;
        r0 = r16;
        r2.<init>(r3, r0, r6);
        r0 = r19;
        r2 = r0.a(r2);
        goto L_0x0054;
    L_0x01ab:
        r2 = new com.twitter.library.api.timeline.c;
        r0 = r19;
        r3 = r0.a;
        r0 = r19;
        r5 = r0.b;
        r5 = r5.b;
        r5 = defpackage.amj.a(r5);
        r0 = r16;
        r2.<init>(r3, r0, r4, r5);
        r3 = "scribe_event";
        r2.b(r3, r11);
        goto L_0x0054;
    L_0x01c8:
        r3 = new com.twitter.library.api.timeline.u;
        r0 = r19;
        r4 = r0.a;
        r0 = r19;
        r2 = r0.b;
        r8 = r2.i;
        r5 = r16;
        r3.<init>(r4, r5, r6, r8);
        r0 = r19;
        r2 = r0.b;
        r4 = r2.e;
        r2 = r3.c(r4);
        r2 = r2.b(r12);
        r2 = r2.c(r10);
        goto L_0x0054;
    L_0x01ed:
        r2 = new com.twitter.library.api.timeline.am;
        r0 = r19;
        r3 = r0.a;
        r0 = r16;
        r2.<init>(r3, r0);
        goto L_0x0054;
    L_0x01fa:
        r2 = 0;
        goto L_0x0054;
        */
        throw new UnsupportedOperationException("Method not decompiled: amj.a():com.twitter.library.service.b");
    }

    private ag a(ag agVar) {
        return (ag) agVar.c(this.b.e).b(this.b.f).c(this.b.c).b("scribe_event", this.b.j);
    }

    public static int a(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 2;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 1;
            case WireMessage.WIRE_AUTH /*3*/:
                return 0;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }
}
