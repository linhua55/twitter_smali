package org.spongycastle.x509;

import java.security.cert.CRLException;
import org.spongycastle.asn1.x509.V2TBSCertListGenerator;
import org.spongycastle.asn1.x509.X509ExtensionsGenerator;

/* compiled from: Twttr */
public class X509V2CRLGenerator {
    private V2TBSCertListGenerator a;
    private X509ExtensionsGenerator b;

    /* compiled from: Twttr */
    class ExtCRLException extends CRLException {
        Throwable cause;

        public Throwable getCause() {
            return this.cause;
        }
    }

    public X509V2CRLGenerator() {
        this.a = new V2TBSCertListGenerator();
        this.b = new X509ExtensionsGenerator();
    }
}
