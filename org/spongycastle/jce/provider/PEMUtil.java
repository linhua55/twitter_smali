package org.spongycastle.jce.provider;

/* compiled from: Twttr */
public class PEMUtil {
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    PEMUtil(String str) {
        this.a = "-----BEGIN " + str + "-----";
        this.b = "-----BEGIN X509 " + str + "-----";
        this.c = "-----END " + str + "-----";
        this.d = "-----END X509 " + str + "-----";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String b(java.io.InputStream r5) throws java.io.IOException {
        /*
        r4 = this;
        r3 = 13;
        r0 = new java.lang.StringBuffer;
        r0.<init>();
    L_0x0007:
        r1 = r5.read();
        if (r1 == r3) goto L_0x001a;
    L_0x000d:
        r2 = 10;
        if (r1 == r2) goto L_0x001a;
    L_0x0011:
        if (r1 < 0) goto L_0x001a;
    L_0x0013:
        if (r1 == r3) goto L_0x0007;
    L_0x0015:
        r1 = (char) r1;
        r0.append(r1);
        goto L_0x0007;
    L_0x001a:
        if (r1 < 0) goto L_0x0022;
    L_0x001c:
        r2 = r0.length();
        if (r2 == 0) goto L_0x0007;
    L_0x0022:
        if (r1 >= 0) goto L_0x0026;
    L_0x0024:
        r0 = 0;
    L_0x0025:
        return r0;
    L_0x0026:
        r0 = r0.toString();
        goto L_0x0025;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.PEMUtil.b(java.io.InputStream):java.lang.String");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    org.spongycastle.asn1.ASN1Sequence a(java.io.InputStream r4) throws java.io.IOException {
        /*
        r3 = this;
        r0 = new java.lang.StringBuffer;
        r0.<init>();
    L_0x0005:
        r1 = r3.b(r4);
        if (r1 == 0) goto L_0x001b;
    L_0x000b:
        r2 = r3.a;
        r2 = r1.startsWith(r2);
        if (r2 != 0) goto L_0x001b;
    L_0x0013:
        r2 = r3.b;
        r1 = r1.startsWith(r2);
        if (r1 == 0) goto L_0x0005;
    L_0x001b:
        r1 = r3.b(r4);
        if (r1 == 0) goto L_0x0031;
    L_0x0021:
        r2 = r3.c;
        r2 = r1.startsWith(r2);
        if (r2 != 0) goto L_0x0031;
    L_0x0029:
        r2 = r3.d;
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x0055;
    L_0x0031:
        r1 = r0.length();
        if (r1 == 0) goto L_0x005c;
    L_0x0037:
        r1 = new org.spongycastle.asn1.ASN1InputStream;
        r0 = r0.toString();
        r0 = org.spongycastle.util.encoders.Base64.a(r0);
        r1.<init>(r0);
        r0 = r1.d();
        r1 = r0 instanceof org.spongycastle.asn1.ASN1Sequence;
        if (r1 != 0) goto L_0x0059;
    L_0x004c:
        r0 = new java.io.IOException;
        r1 = "malformed PEM data encountered";
        r0.<init>(r1);
        throw r0;
    L_0x0055:
        r0.append(r1);
        goto L_0x001b;
    L_0x0059:
        r0 = (org.spongycastle.asn1.ASN1Sequence) r0;
    L_0x005b:
        return r0;
    L_0x005c:
        r0 = 0;
        goto L_0x005b;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.PEMUtil.a(java.io.InputStream):org.spongycastle.asn1.ASN1Sequence");
    }
}
