package org.spongycastle.x509;

import org.spongycastle.asn1.x509.V3TBSCertificateGenerator;
import org.spongycastle.asn1.x509.X509ExtensionsGenerator;

/* compiled from: Twttr */
public class X509V3CertificateGenerator {
    private V3TBSCertificateGenerator a;
    private X509ExtensionsGenerator b;

    public X509V3CertificateGenerator() {
        this.a = new V3TBSCertificateGenerator();
        this.b = new X509ExtensionsGenerator();
    }
}
