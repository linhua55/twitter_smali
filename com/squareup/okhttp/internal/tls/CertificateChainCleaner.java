package com.squareup.okhttp.internal.tls;

import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;

/* compiled from: Twttr */
public final class CertificateChainCleaner {
    private final TrustRootIndex trustRootIndex;

    public CertificateChainCleaner(TrustRootIndex trustRootIndex) {
        this.trustRootIndex = trustRootIndex;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.security.cert.Certificate> clean(java.util.List<java.security.cert.Certificate> r8) throws javax.net.ssl.SSLPeerUnverifiedException {
        /*
        r7 = this;
        r2 = new java.util.ArrayDeque;
        r2.<init>(r8);
        r3 = new java.util.ArrayList;
        r3.<init>();
        r0 = r2.removeFirst();
        r3.add(r0);
    L_0x0011:
        r0 = r3.size();
        r0 = r0 + -1;
        r0 = r3.get(r0);
        r0 = (java.security.cert.X509Certificate) r0;
        r1 = r7.trustRootIndex;
        r1 = r1.findByIssuerAndSignature(r0);
        if (r1 == 0) goto L_0x0036;
    L_0x0025:
        r2 = r3.size();
        r4 = 1;
        if (r2 > r4) goto L_0x0032;
    L_0x002c:
        r0 = r0.equals(r1);
        if (r0 != 0) goto L_0x0035;
    L_0x0032:
        r3.add(r1);
    L_0x0035:
        return r3;
    L_0x0036:
        r4 = r2.iterator();
    L_0x003a:
        r1 = r4.hasNext();
        if (r1 == 0) goto L_0x0061;
    L_0x0040:
        r1 = r4.next();
        r1 = (java.security.cert.X509Certificate) r1;
        r5 = r0.getIssuerDN();
        r6 = r1.getSubjectDN();
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x003a;
    L_0x0054:
        r5 = r7.verifySignature(r0, r1);
        if (r5 == 0) goto L_0x003a;
    L_0x005a:
        r4.remove();
        r3.add(r1);
        goto L_0x0011;
    L_0x0061:
        r1 = new javax.net.ssl.SSLPeerUnverifiedException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Failed to find a cert that signed ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.tls.CertificateChainCleaner.clean(java.util.List):java.util.List<java.security.cert.Certificate>");
    }

    private boolean verifySignature(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
