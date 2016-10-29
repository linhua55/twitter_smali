package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.Holder;
import org.spongycastle.jce.PrincipalUtil;
import org.spongycastle.jce.X509Principal;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class AttributeCertificateHolder implements CertSelector, Selector {
    final Holder a;

    AttributeCertificateHolder(ASN1Sequence aSN1Sequence) {
        this.a = Holder.a(aSN1Sequence);
    }

    public int a() {
        if (this.a.c() != null) {
            return this.a.c().a().a().intValue();
        }
        return -1;
    }

    public String b() {
        if (this.a.c() != null) {
            return this.a.c().b().a().a();
        }
        return null;
    }

    public byte[] c() {
        if (this.a.c() != null) {
            return this.a.c().c().e();
        }
        return null;
    }

    private boolean a(X509Principal x509Principal, GeneralNames generalNames) {
        GeneralName[] a = generalNames.a();
        for (int i = 0; i != a.length; i++) {
            GeneralName generalName = a[i];
            if (generalName.a() == 4) {
                try {
                    if (new X509Principal(generalName.b().d().f()).equals(x509Principal)) {
                        return true;
                    }
                } catch (IOException e) {
                }
            }
        }
        return false;
    }

    private Object[] a(GeneralName[] generalNameArr) {
        List arrayList = new ArrayList(generalNameArr.length);
        for (int i = 0; i != generalNameArr.length; i++) {
            if (generalNameArr[i].a() == 4) {
                try {
                    arrayList.add(new X500Principal(generalNameArr[i].b().d().f()));
                } catch (IOException e) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    private Principal[] a(GeneralNames generalNames) {
        Object[] a = a(generalNames.a());
        List arrayList = new ArrayList();
        for (int i = 0; i != a.length; i++) {
            if (a[i] instanceof Principal) {
                arrayList.add(a[i]);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    public Principal[] d() {
        if (this.a.b() != null) {
            return a(this.a.b());
        }
        return null;
    }

    public Principal[] e() {
        if (this.a.a() != null) {
            return a(this.a.a().a());
        }
        return null;
    }

    public BigInteger f() {
        if (this.a.a() != null) {
            return this.a.a().b().a();
        }
        return null;
    }

    public Object clone() {
        return new AttributeCertificateHolder((ASN1Sequence) this.a.g());
    }

    public boolean match(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        try {
            if (this.a.a() != null) {
                boolean z = this.a.a().b().a().equals(x509Certificate.getSerialNumber()) && a(PrincipalUtil.a(x509Certificate), this.a.a().a());
                return z;
            } else if (this.a.b() != null && a(PrincipalUtil.b(x509Certificate), this.a.b())) {
                return true;
            } else {
                if (this.a.c() == null) {
                    return false;
                }
                try {
                    MessageDigest instance = MessageDigest.getInstance(b(), "SC");
                    switch (a()) {
                        case p.View_android_theme /*0*/:
                            instance.update(certificate.getPublicKey().getEncoded());
                            break;
                        case p.View_android_focusable /*1*/:
                            instance.update(certificate.getEncoded());
                            break;
                    }
                    return !Arrays.a(instance.digest(), c()) ? false : false;
                } catch (Exception e) {
                    return false;
                }
            }
        } catch (CertificateEncodingException e2) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttributeCertificateHolder)) {
            return false;
        }
        return this.a.equals(((AttributeCertificateHolder) obj).a);
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
