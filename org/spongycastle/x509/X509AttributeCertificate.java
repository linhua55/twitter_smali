package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Extension;
import java.util.Date;

/* compiled from: Twttr */
public interface X509AttributeCertificate extends X509Extension {
    BigInteger a();

    void a(Date date) throws CertificateExpiredException, CertificateNotYetValidException;

    X509Attribute[] a(String str);

    Date b();

    AttributeCertificateHolder c();

    AttributeCertificateIssuer d();

    byte[] e() throws IOException;
}
