package org.spongycastle.x509;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.util.Collection;

/* compiled from: Twttr */
public abstract class PKIXAttrCertChecker implements Cloneable {
    public abstract void a(X509AttributeCertificate x509AttributeCertificate, CertPath certPath, CertPath certPath2, Collection collection) throws CertPathValidatorException;

    public abstract Object clone();
}
