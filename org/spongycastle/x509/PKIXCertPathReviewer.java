package org.spongycastle.x509;

import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.jce.provider.CertPathValidatorUtilities;

/* compiled from: Twttr */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String q;
    private static final String r;
    private static final String s;

    static {
        q = X509Extensions.B.a();
        r = X509Extensions.p.a();
        s = X509Extensions.x.a();
    }
}
