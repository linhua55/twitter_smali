package defpackage;

import android.support.annotation.VisibleForTesting;
import bir;
import bis;
import bit;
import biu;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.c;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: bip */
public class bip extends bhc<bit> {
    public static final n<bip> e;
    public final int f;

    public /* synthetic */ bhc a(boolean z) {
        return b(z);
    }

    static {
        e = new bis();
    }

    public bip(bir bir) {
        super(bir);
        this.f = bir.f;
    }

    public n<bit> a() {
        return bit.i;
    }

    public int g() {
        return this.f;
    }

    public boolean h() {
        return false;
    }

    public boolean z() {
        return a(5);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.bip a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException {
        /*
        r0 = r7.a();
        r2 = new bir;
        r1 = 1;
        r2.<init>(r1);
        r3 = new biu;
        r3.<init>();
        r2.b(r8);
        r1 = 0;
    L_0x0013:
        if (r0 == 0) goto L_0x014a;
    L_0x0015:
        r4 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r4) goto L_0x014a;
    L_0x0019:
        r4 = biq.a;
        r0 = r0.ordinal();
        r0 = r4[r0];
        switch(r0) {
            case 1: goto L_0x0029;
            case 2: goto L_0x0029;
            case 3: goto L_0x0086;
            case 4: goto L_0x008b;
            case 5: goto L_0x0145;
            case 6: goto L_0x0060;
            default: goto L_0x0024;
        };
    L_0x0024:
        r0 = r7.a();
        goto L_0x0013;
    L_0x0029:
        r0 = r7.e();
        r4 = "id";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x003e;
    L_0x0036:
        r4 = r7.p();
        r2.b(r4);
        goto L_0x0024;
    L_0x003e:
        r4 = "conversation_id";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x004f;
    L_0x0047:
        r0 = r7.s();
        r2.b(r0);
        goto L_0x0024;
    L_0x004f:
        r4 = "request_id";
        r0 = r4.equals(r0);
        if (r0 == 0) goto L_0x0024;
    L_0x0058:
        r0 = r7.s();
        r3.a(r0);
        goto L_0x0024;
    L_0x0060:
        r0 = r7.e();
        r4 = "marked_as_spam";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0075;
    L_0x006d:
        r0 = r7.r();
        r3.a(r0);
        goto L_0x0024;
    L_0x0075:
        r4 = "affects_sort";
        r0 = r4.equals(r0);
        if (r0 == 0) goto L_0x0024;
    L_0x007e:
        r0 = r7.r();
        r2.a(r0);
        goto L_0x0024;
    L_0x0086:
        r1 = r7.g();
        goto L_0x0024;
    L_0x008b:
        r0 = "message_data";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0140;
    L_0x0094:
        r0 = r7.a();
    L_0x0098:
        if (r0 == 0) goto L_0x0024;
    L_0x009a:
        r4 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r4) goto L_0x0024;
    L_0x009e:
        r4 = biq.a;
        r0 = r0.ordinal();
        r0 = r4[r0];
        switch(r0) {
            case 1: goto L_0x00b2;
            case 2: goto L_0x00b2;
            case 3: goto L_0x00fe;
            case 4: goto L_0x0103;
            case 5: goto L_0x013a;
            default: goto L_0x00a9;
        };
    L_0x00a9:
        r0 = r1;
    L_0x00aa:
        r1 = r7.a();
        r6 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x0098;
    L_0x00b2:
        r0 = r7.e();
        r4 = "id";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00c8;
    L_0x00bf:
        r4 = r7.p();
        r3.a(r4);
        r0 = r1;
        goto L_0x00aa;
    L_0x00c8:
        r4 = "time";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00da;
    L_0x00d1:
        r4 = r7.p();
        r2.c(r4);
        r0 = r1;
        goto L_0x00aa;
    L_0x00da:
        r4 = "text";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00ec;
    L_0x00e3:
        r0 = r7.s();
        r3.b(r0);
        r0 = r1;
        goto L_0x00aa;
    L_0x00ec:
        r4 = "sender_id";
        r0 = r4.equals(r0);
        if (r0 == 0) goto L_0x00a9;
    L_0x00f5:
        r4 = r7.p();
        r2.a(r4);
        r0 = r1;
        goto L_0x00aa;
    L_0x00fe:
        r0 = r7.g();
        goto L_0x00aa;
    L_0x0103:
        r0 = "entities";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0119;
    L_0x010c:
        r0 = com.twitter.model.core.bg.class;
        r0 = com.twitter.model.json.common.g.c(r7, r0);
        r0 = (com.twitter.model.core.bg) r0;
        r3.a(r0);
        r0 = r1;
        goto L_0x00aa;
    L_0x0119:
        r0 = "attachment";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0134;
    L_0x0122:
        r0 = com.twitter.model.dms.c.class;
        r0 = com.twitter.model.json.common.g.f(r7, r0);
        r0 = com.twitter.util.collection.CollectionUtils.b(r0);
        r0 = (com.twitter.model.dms.c) r0;
        r3.a(r0);
        r0 = r1;
        goto L_0x00aa;
    L_0x0134:
        r7.c();
        r0 = r1;
        goto L_0x00aa;
    L_0x013a:
        r7.c();
        r0 = r1;
        goto L_0x00aa;
    L_0x0140:
        r7.c();
        goto L_0x0024;
    L_0x0145:
        r7.c();
        goto L_0x0024;
    L_0x014a:
        r0 = r3.q();
        r0 = r2.a(r0);
        r0 = (bir) r0;
        r0 = r0.q();
        r0 = (defpackage.bip) r0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: bip.a(com.fasterxml.jackson.core.JsonParser, boolean):bip");
    }

    public bip b(boolean z) {
        if (c(z)) {
            return A();
        }
        return this;
    }

    public bip A() {
        c n = n();
        cr i = n != null ? n.i() : null;
        if (i == null) {
            return this;
        }
        String b = e.b(k());
        int length = b.length() + " ".length();
        return (bip) ((bir) new bir(this).a(((biu) ((biu) ((biu) new biu((bit) c()).a((bg) (m() != null ? new bi(m()) : new bi()).a((cr) ((cu) ((cu) new cu(i).a(length)).b(i.B.length() + length)).q()).q())).b(b + " " + i.B)).a(null)).q())).q();
    }

    @VisibleForTesting
    boolean c(boolean z) {
        return z && u() && ((ae) n()).e.l;
    }
}
