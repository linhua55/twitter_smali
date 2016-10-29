package com.twitter.model.json.pc;

import cni;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.model.json.core.JsonUserName;
import com.twitter.util.object.f;
import java.util.Map;
import java.util.Set;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonPromotedContent extends e<cni> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public long d;
    @JsonField
    public Map<String, String> e;
    @JsonField
    public PromotedContentAdvertiser f;
    @JsonField
    public PromotedContentTrend g;
    @JsonField
    public PromotedContext h;
    @JsonField
    public JsonUserName[] i;
    @JsonField
    public Set<String> j;

    @JsonObject
    /* compiled from: Twttr */
    public class PromotedContentAdvertiser extends b {
        @JsonField
        public long a;
    }

    @JsonObject
    /* compiled from: Twttr */
    public class PromotedContentTrend extends b {
        @JsonField
        public long a;
        @JsonField
        public String b;
    }

    @JsonObject
    /* compiled from: Twttr */
    public class PromotedContext extends b {
        @JsonField
        public String a;
        @JsonField
        public int[] b;
    }

    public /* synthetic */ f c() {
        return a();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public cnk a() {
        /*
        r8 = this;
        r4 = 1;
        r2 = 0;
        r0 = new cnk;
        r0.<init>();
        r1 = r8.a;
        r0 = r0.a(r1);
        r1 = r8.b;
        r0 = r0.b(r1);
        r1 = r8.c;
        r0 = r0.d(r1);
        r1 = r8.j;
        r5 = r0.a(r1);
        r0 = r8.e;
        if (r0 == 0) goto L_0x007c;
    L_0x0023:
        r0 = r0.entrySet();
        r6 = r0.iterator();
    L_0x002b:
        r0 = r6.hasNext();
        if (r0 == 0) goto L_0x007c;
    L_0x0031:
        r0 = r6.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r3 = -1;
        r7 = r1.hashCode();
        switch(r7) {
            case -1885751826: goto L_0x005b;
            case -450192032: goto L_0x0066;
            default: goto L_0x004b;
        };
    L_0x004b:
        r1 = r3;
    L_0x004c:
        switch(r1) {
            case 0: goto L_0x0050;
            case 1: goto L_0x0071;
            default: goto L_0x004f;
        };
    L_0x004f:
        goto L_0x002b;
    L_0x0050:
        r1 = "true";
        r0 = r1.equals(r0);
        r5.a(r0);
        goto L_0x002b;
    L_0x005b:
        r7 = "pac_in_timeline";
        r1 = r1.equals(r7);
        if (r1 == 0) goto L_0x004b;
    L_0x0064:
        r1 = r2;
        goto L_0x004c;
    L_0x0066:
        r7 = "suppress_media_forward";
        r1 = r1.equals(r7);
        if (r1 == 0) goto L_0x004b;
    L_0x006f:
        r1 = r4;
        goto L_0x004c;
    L_0x0071:
        r1 = "true";
        r0 = r1.equals(r0);
        r5.b(r0);
        goto L_0x002b;
    L_0x007c:
        r0 = r8.f;
        if (r0 == 0) goto L_0x0087;
    L_0x0080:
        r0 = r8.f;
        r0 = r0.a;
        r5.b(r0);
    L_0x0087:
        r0 = r8.g;
        if (r0 == 0) goto L_0x0098;
    L_0x008b:
        r5.c(r4);
        r6 = r0.a;
        r5.a(r6);
        r0 = r0.b;
        r5.c(r0);
    L_0x0098:
        r1 = r8.i;
        if (r1 == 0) goto L_0x00b2;
    L_0x009c:
        r3 = r1.length;
        r0 = r2;
    L_0x009e:
        if (r0 >= r3) goto L_0x00b2;
    L_0x00a0:
        r4 = r1[r0];
        r6 = r5.e();
        if (r6 != 0) goto L_0x00af;
    L_0x00a8:
        r4 = r4.a();
        r5.c(r4);
    L_0x00af:
        r0 = r0 + 1;
        goto L_0x009e;
    L_0x00b2:
        r0 = r8.h;
        if (r0 == 0) goto L_0x00cb;
    L_0x00b6:
        r1 = r0.b;
        if (r1 == 0) goto L_0x00cb;
    L_0x00ba:
        r0 = r0.b;
        r1 = r0.length;
        if (r2 >= r1) goto L_0x00cb;
    L_0x00bf:
        r0 = r0[r2];
        r1 = "animation";
        r0 = java.lang.String.valueOf(r0);
        r5.a(r1, r0);
    L_0x00cb:
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.model.json.pc.JsonPromotedContent.a():cnk");
    }
}
