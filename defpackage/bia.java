package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.DMPaginationStatus;
import com.twitter.model.dms.a;
import com.twitter.model.dms.bm;
import com.twitter.model.dms.h;
import com.twitter.model.dms.o;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.j;
import com.twitter.model.json.dms.f;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: bia */
public class bia extends o {
    public final String a;
    public final DMPaginationStatus b;
    private final int c;
    private final List<a> d;
    private final List<TwitterUser> e;
    private final List<h> f;
    private final long g;
    private final long h;
    private final List<bm> i;

    protected bia(int i, List<a> list, List<TwitterUser> list2, List<bm> list3, List<h> list4, DMPaginationStatus dMPaginationStatus, long j, String str, long j2) {
        this.c = i;
        this.d = list;
        this.e = list2;
        this.i = list3;
        this.f = list4;
        this.g = j;
        this.h = j2;
        this.b = dMPaginationStatus;
        this.a = str;
    }

    public static bia a(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        String str = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String str2;
            switch (bib.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    int intValue = ((Integer) new f().getFromString(str)).intValue();
                    if (intValue == -1) {
                        jsonParser.c();
                        str2 = str;
                        break;
                    }
                    return bia.a(jsonParser, intValue);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str2 = jsonParser.g();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    jsonParser.c();
                    str2 = str;
                    break;
                default:
                    str2 = str;
                    break;
            }
            str = str2;
            a = jsonParser.a();
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static defpackage.bia a(com.fasterxml.jackson.core.JsonParser r14, int r15) throws java.io.IOException {
        /*
        r10 = -1;
        r1 = 0;
        r2 = com.twitter.util.collection.n.d();
        r3 = com.twitter.util.collection.n.d();
        r5 = com.twitter.util.collection.n.d();
        r4 = com.twitter.util.collection.n.d();
        r0 = r14.a();
        r9 = r1;
        r7 = r10;
        r6 = r1;
    L_0x001a:
        if (r0 == 0) goto L_0x00dd;
    L_0x001c:
        r12 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r12) goto L_0x00dd;
    L_0x0020:
        r12 = defpackage.bib.a;
        r0 = r0.ordinal();
        r0 = r12[r0];
        switch(r0) {
            case 1: goto L_0x0034;
            case 2: goto L_0x00b5;
            case 3: goto L_0x00bb;
            case 4: goto L_0x0073;
            case 5: goto L_0x0073;
            default: goto L_0x002b;
        };
    L_0x002b:
        r0 = r1;
    L_0x002c:
        r1 = r14.a();
        r13 = r1;
        r1 = r0;
        r0 = r13;
        goto L_0x001a;
    L_0x0034:
        r0 = "users";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0048;
    L_0x003d:
        r0 = com.twitter.model.core.TwitterUser.class;
        r0 = com.twitter.model.json.common.g.f(r14, r0);
        r3.c(r0);
        r0 = r1;
        goto L_0x002c;
    L_0x0048:
        r0 = "conversations";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x005c;
    L_0x0051:
        r0 = com.twitter.model.dms.h.class;
        r0 = com.twitter.model.json.common.g.f(r14, r0);
        r5.c(r0);
        r0 = r1;
        goto L_0x002c;
    L_0x005c:
        r0 = "users_url";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x006e;
    L_0x0065:
        r0 = defpackage.bia.c(r14);
        r4.c(r0);
        r0 = r1;
        goto L_0x002c;
    L_0x006e:
        r14.c();
        r0 = r1;
        goto L_0x002c;
    L_0x0073:
        r0 = "status";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0087;
    L_0x007c:
        r0 = com.twitter.model.dms.DMPaginationStatus.class;
        r0 = com.twitter.model.json.common.g.c(r14, r0);
        r0 = (com.twitter.model.dms.DMPaginationStatus) r0;
        r6 = r0;
        r0 = r1;
        goto L_0x002c;
    L_0x0087:
        r0 = "min_entry_id";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0096;
    L_0x0090:
        r7 = r14.p();
        r0 = r1;
        goto L_0x002c;
    L_0x0096:
        r0 = "cursor";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x00a5;
    L_0x009f:
        r9 = r14.s();
        r0 = r1;
        goto L_0x002c;
    L_0x00a5:
        r0 = "last_seen_event_id";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x002b;
    L_0x00ae:
        r10 = r14.p();
        r0 = r1;
        goto L_0x002c;
    L_0x00b5:
        r0 = r14.g();
        goto L_0x002c;
    L_0x00bb:
        r0 = "entries";
        r0 = r0.equals(r1);
        if (r0 != 0) goto L_0x00cd;
    L_0x00c4:
        r0 = "requests";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x00d7;
    L_0x00cd:
        r0 = defpackage.bia.b(r14);
        r2.c(r0);
        r0 = r1;
        goto L_0x002c;
    L_0x00d7:
        r14.c();
        r0 = r1;
        goto L_0x002c;
    L_0x00dd:
        r0 = new bia;
        r2 = r2.q();
        r2 = (java.util.List) r2;
        r3 = r3.q();
        r3 = (java.util.List) r3;
        r4 = r4.q();
        r4 = (java.util.List) r4;
        r5 = r5.q();
        r5 = (java.util.List) r5;
        r1 = r15;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r9, r10);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: bia.a(com.fasterxml.jackson.core.JsonParser, int):bia");
    }

    public static List<a> b(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (bib.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    a a2 = biz.a(jsonParser);
                    if (a2 == null) {
                        jsonParser.c();
                        break;
                    }
                    d.c(a2);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return (List) d.q();
    }

    public static List<bm> c(JsonParser jsonParser) throws IOException {
        Map a = j.a(g.e(jsonParser, String.class));
        n a2 = n.a(a.size());
        for (Entry entry : a.entrySet()) {
            a2.c(new bm(((Long) entry.getKey()).longValue(), (String) entry.getValue()));
        }
        return (List) a2.q();
    }

    public List<a> a() {
        return this.d;
    }

    public List<TwitterUser> b() {
        return this.e;
    }

    public List<h> c() {
        return this.f;
    }

    public int d() {
        return this.c;
    }

    public long e() {
        return this.g;
    }

    public long f() {
        return this.h;
    }
}
