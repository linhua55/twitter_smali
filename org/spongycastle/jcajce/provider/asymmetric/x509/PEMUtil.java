package org.spongycastle.jcajce.provider.asymmetric.x509;

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
    private java.lang.String b(java.io.InputStream r4) throws java.io.IOException {
        /*
        r3 = this;
        r0 = new java.lang.StringBuffer;
        r0.<init>();
    L_0x0005:
        r1 = r4.read();
        r2 = 13;
        if (r1 == r2) goto L_0x0018;
    L_0x000d:
        r2 = 10;
        if (r1 == r2) goto L_0x0018;
    L_0x0011:
        if (r1 < 0) goto L_0x0018;
    L_0x0013:
        r1 = (char) r1;
        r0.append(r1);
        goto L_0x0005;
    L_0x0018:
        if (r1 < 0) goto L_0x0020;
    L_0x001a:
        r2 = r0.length();
        if (r2 == 0) goto L_0x0005;
    L_0x0020:
        if (r1 >= 0) goto L_0x0024;
    L_0x0022:
        r0 = 0;
    L_0x0023:
        return r0;
    L_0x0024:
        r0 = r0.toString();
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jcajce.provider.asymmetric.x509.PEMUtil.b(java.io.InputStream):java.lang.String");
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
        if (r2 == 0) goto L_0x0044;
    L_0x0031:
        r1 = r0.length();
        if (r1 == 0) goto L_0x0052;
    L_0x0037:
        r0 = r0.toString();	 Catch:{ Exception -> 0x0048 }
        r0 = org.spongycastle.util.encoders.Base64.a(r0);	 Catch:{ Exception -> 0x0048 }
        r0 = org.spongycastle.asn1.ASN1Sequence.a(r0);	 Catch:{ Exception -> 0x0048 }
    L_0x0043:
        return r0;
    L_0x0044:
        r0.append(r1);
        goto L_0x001b;
    L_0x0048:
        r0 = move-exception;
        r0 = new java.io.IOException;
        r1 = "malformed PEM data encountered";
        r0.<init>(r1);
        throw r0;
    L_0x0052:
        r0 = 0;
        goto L_0x0043;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jcajce.provider.asymmetric.x509.PEMUtil.a(java.io.InputStream):org.spongycastle.asn1.ASN1Sequence");
    }
}
