package org.spongycastle.x509;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.x509.AttCertIssuer;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.V2Form;
import org.spongycastle.util.Selector;

/* compiled from: Twttr */
public class AttributeCertificateIssuer implements CertSelector, Selector {
    final ASN1Encodable a;

    public AttributeCertificateIssuer(AttCertIssuer attCertIssuer) {
        this.a = attCertIssuer.a();
    }

    private Object[] b() {
        GeneralNames a;
        if (this.a instanceof V2Form) {
            a = ((V2Form) this.a).a();
        } else {
            a = (GeneralNames) this.a;
        }
        GeneralName[] a2 = a.a();
        List arrayList = new ArrayList(a2.length);
        for (int i = 0; i != a2.length; i++) {
            if (a2[i].a() == 4) {
                try {
                    arrayList.add(new X500Principal(a2[i].b().d().f()));
                } catch (IOException e) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    public Principal[] a() {
        Object[] b = b();
        List arrayList = new ArrayList();
        for (int i = 0; i != b.length; i++) {
            if (b[i] instanceof Principal) {
                arrayList.add(b[i]);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    private boolean a(X500Principal x500Principal, GeneralNames generalNames) {
        GeneralName[] a = generalNames.a();
        for (int i = 0; i != a.length; i++) {
            GeneralName generalName = a[i];
            if (generalName.a() == 4) {
                try {
                    if (new X500Principal(generalName.b().d().f()).equals(x500Principal)) {
                        return true;
                    }
                } catch (IOException e) {
                }
            }
        }
        return false;
    }

    public Object clone() {
        return new AttributeCertificateIssuer(AttCertIssuer.a(this.a));
    }

    public boolean match(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.a instanceof V2Form) {
            V2Form v2Form = (V2Form) this.a;
            if (v2Form.b() != null) {
                boolean z = v2Form.b().b().a().equals(x509Certificate.getSerialNumber()) && a(x509Certificate.getIssuerX500Principal(), v2Form.b().a());
                return z;
            }
            if (a(x509Certificate.getSubjectX500Principal(), v2Form.a())) {
                return true;
            }
            return false;
        }
        if (a(x509Certificate.getSubjectX500Principal(), (GeneralNames) this.a)) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttributeCertificateIssuer)) {
            return false;
        }
        return this.a.equals(((AttributeCertificateIssuer) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean a(Object obj) {
        if (obj instanceof X509Certificate) {
            return match((Certificate) obj);
        }
        return false;
    }
}
