package org.spongycastle.jce;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.TBSCertificateStructure;
import org.spongycastle.asn1.x509.X509Name;

/* compiled from: Twttr */
public class PrincipalUtil {
    public static X509Principal a(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new X509Principal(X509Name.a(TBSCertificateStructure.a(ASN1Primitive.b(x509Certificate.getTBSCertificate())).a()));
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    public static X509Principal b(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new X509Principal(X509Name.a(TBSCertificateStructure.a(ASN1Primitive.b(x509Certificate.getTBSCertificate())).b()));
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }
}
