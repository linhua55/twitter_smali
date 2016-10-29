package org.spongycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AttributeCertificate;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class X509V2AttributeCertificate implements X509AttributeCertificate {
    private AttributeCertificate a;
    private Date b;
    private Date c;

    private static AttributeCertificate a(InputStream inputStream) throws IOException {
        try {
            return AttributeCertificate.a(new ASN1InputStream(inputStream).d());
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new IOException("exception decoding certificate structure: " + e2.toString());
        }
    }

    public X509V2AttributeCertificate(InputStream inputStream) throws IOException {
        this(a(inputStream));
    }

    public X509V2AttributeCertificate(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }

    X509V2AttributeCertificate(AttributeCertificate attributeCertificate) throws IOException {
        this.a = attributeCertificate;
        try {
            this.c = attributeCertificate.a().e().b().e();
            this.b = attributeCertificate.a().e().a().e();
        } catch (ParseException e) {
            throw new IOException("invalid data structure in certificate!");
        }
    }

    public BigInteger a() {
        return this.a.a().c().a();
    }

    public AttributeCertificateHolder c() {
        return new AttributeCertificateHolder((ASN1Sequence) this.a.a().a().g());
    }

    public AttributeCertificateIssuer d() {
        return new AttributeCertificateIssuer(this.a.a().b());
    }

    public Date f() {
        return this.b;
    }

    public Date b() {
        return this.c;
    }

    public void a(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.after(b())) {
            throw new CertificateExpiredException("certificate expired on " + b());
        } else if (date.before(f())) {
            throw new CertificateNotYetValidException("certificate not valid till " + f());
        }
    }

    public byte[] e() throws IOException {
        return this.a.f();
    }

    public byte[] getExtensionValue(String str) {
        Extensions i = this.a.a().i();
        if (i != null) {
            Extension a = i.a(new ASN1ObjectIdentifier(str));
            if (a != null) {
                try {
                    return a.c().a("DER");
                } catch (Exception e) {
                    throw new RuntimeException("error encoding " + e.toString());
                }
            }
        }
        return null;
    }

    private Set a(boolean z) {
        Extensions i = this.a.a().i();
        if (i == null) {
            return null;
        }
        Set hashSet = new HashSet();
        Enumeration a = i.a();
        while (a.hasMoreElements()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a.nextElement();
            if (i.a(aSN1ObjectIdentifier).b() == z) {
                hashSet.add(aSN1ObjectIdentifier.a());
            }
        }
        return hashSet;
    }

    public Set getNonCriticalExtensionOIDs() {
        return a(false);
    }

    public Set getCriticalExtensionOIDs() {
        return a(true);
    }

    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        return (criticalExtensionOIDs == null || criticalExtensionOIDs.isEmpty()) ? false : true;
    }

    public X509Attribute[] a(String str) {
        ASN1Sequence h = this.a.a().h();
        List arrayList = new ArrayList();
        for (int i = 0; i != h.h(); i++) {
            X509Attribute x509Attribute = new X509Attribute(h.a(i));
            if (x509Attribute.a().equals(str)) {
                arrayList.add(x509Attribute);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (X509Attribute[]) arrayList.toArray(new X509Attribute[arrayList.size()]);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X509AttributeCertificate)) {
            return z;
        }
        try {
            return Arrays.a(e(), ((X509AttributeCertificate) obj).e());
        } catch (IOException e) {
            return z;
        }
    }

    public int hashCode() {
        try {
            return Arrays.a(e());
        } catch (IOException e) {
            return 0;
        }
    }
}
