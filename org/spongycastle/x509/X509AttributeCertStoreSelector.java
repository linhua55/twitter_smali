package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.Target;
import org.spongycastle.asn1.x509.TargetInformation;
import org.spongycastle.asn1.x509.Targets;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.util.Selector;

/* compiled from: Twttr */
public class X509AttributeCertStoreSelector implements Selector {
    private AttributeCertificateHolder a;
    private AttributeCertificateIssuer b;
    private BigInteger c;
    private Date d;
    private X509AttributeCertificate e;
    private Collection f;
    private Collection g;

    public X509AttributeCertStoreSelector() {
        this.f = new HashSet();
        this.g = new HashSet();
    }

    public boolean a(Object obj) {
        if (!(obj instanceof X509AttributeCertificate)) {
            return false;
        }
        X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) obj;
        if (this.e != null && !this.e.equals(x509AttributeCertificate)) {
            return false;
        }
        if (this.c != null && !x509AttributeCertificate.a().equals(this.c)) {
            return false;
        }
        if (this.a != null && !x509AttributeCertificate.c().equals(this.a)) {
            return false;
        }
        if (this.b != null && !x509AttributeCertificate.d().equals(this.b)) {
            return false;
        }
        if (this.d != null) {
            try {
                x509AttributeCertificate.a(this.d);
            } catch (CertificateExpiredException e) {
                return false;
            } catch (CertificateNotYetValidException e2) {
                return false;
            }
        }
        if (!(this.f.isEmpty() && this.g.isEmpty())) {
            byte[] extensionValue = x509AttributeCertificate.getExtensionValue(X509Extensions.E.a());
            if (extensionValue != null) {
                try {
                    boolean z;
                    Target[] a;
                    Targets[] a2 = TargetInformation.a(new ASN1InputStream(((DEROctetString) ASN1Primitive.b(extensionValue)).e()).d()).a();
                    if (!this.f.isEmpty()) {
                        z = false;
                        for (Targets a3 : a2) {
                            a = a3.a();
                            for (Target b : a) {
                                if (this.f.contains(GeneralName.a(b.b()))) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        if (!z) {
                            return false;
                        }
                    }
                    if (!this.g.isEmpty()) {
                        z = false;
                        for (Targets a32 : a2) {
                            a = a32.a();
                            for (Target b2 : a) {
                                if (this.g.contains(GeneralName.a(b2.a()))) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        if (!z) {
                            return false;
                        }
                    }
                } catch (IOException e3) {
                    return false;
                } catch (IllegalArgumentException e4) {
                    return false;
                }
            }
        }
        return true;
    }

    public Object clone() {
        X509AttributeCertStoreSelector x509AttributeCertStoreSelector = new X509AttributeCertStoreSelector();
        x509AttributeCertStoreSelector.e = this.e;
        x509AttributeCertStoreSelector.d = b();
        x509AttributeCertStoreSelector.a = this.a;
        x509AttributeCertStoreSelector.b = this.b;
        x509AttributeCertStoreSelector.c = this.c;
        x509AttributeCertStoreSelector.g = f();
        x509AttributeCertStoreSelector.f = e();
        return x509AttributeCertStoreSelector;
    }

    public X509AttributeCertificate a() {
        return this.e;
    }

    public Date b() {
        if (this.d != null) {
            return new Date(this.d.getTime());
        }
        return null;
    }

    public AttributeCertificateHolder c() {
        return this.a;
    }

    public BigInteger d() {
        return this.c;
    }

    public Collection e() {
        return Collections.unmodifiableCollection(this.f);
    }

    public Collection f() {
        return Collections.unmodifiableCollection(this.g);
    }
}
