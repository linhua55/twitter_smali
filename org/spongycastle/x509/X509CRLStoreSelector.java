package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.extension.X509ExtensionUtil;

/* compiled from: Twttr */
public class X509CRLStoreSelector extends X509CRLSelector implements Selector {
    private boolean a;
    private boolean b;
    private BigInteger c;
    private byte[] d;
    private boolean e;
    private X509AttributeCertificate f;

    public X509CRLStoreSelector() {
        this.a = false;
        this.b = false;
        this.c = null;
        this.d = null;
        this.e = false;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void a(X509AttributeCertificate x509AttributeCertificate) {
        this.f = x509AttributeCertificate;
    }

    public X509AttributeCertificate a() {
        return this.f;
    }

    public boolean a(Object obj) {
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        X509CRL x509crl = (X509CRL) obj;
        ASN1Integer aSN1Integer = null;
        try {
            byte[] extensionValue = x509crl.getExtensionValue(X509Extensions.l.a());
            if (extensionValue != null) {
                aSN1Integer = ASN1Integer.a(X509ExtensionUtil.a(extensionValue));
            }
            if (b() && aSN1Integer == null) {
                return false;
            }
            if (c() && aSN1Integer != null) {
                return false;
            }
            if (aSN1Integer != null && this.c != null && aSN1Integer.e().compareTo(this.c) == 1) {
                return false;
            }
            if (this.e) {
                byte[] extensionValue2 = x509crl.getExtensionValue(X509Extensions.m.a());
                if (this.d == null) {
                    if (extensionValue2 != null) {
                        return false;
                    }
                } else if (!Arrays.a(extensionValue2, this.d)) {
                    return false;
                }
            }
            return super.match((X509CRL) obj);
        } catch (Exception e) {
            return false;
        }
    }

    public boolean match(CRL crl) {
        return a((Object) crl);
    }

    public boolean b() {
        return this.a;
    }

    public static X509CRLStoreSelector a(X509CRLSelector x509CRLSelector) {
        if (x509CRLSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        x509CRLStoreSelector.setCertificateChecking(x509CRLSelector.getCertificateChecking());
        x509CRLStoreSelector.setDateAndTime(x509CRLSelector.getDateAndTime());
        try {
            x509CRLStoreSelector.setIssuerNames(x509CRLSelector.getIssuerNames());
            x509CRLStoreSelector.setIssuers(x509CRLSelector.getIssuers());
            x509CRLStoreSelector.setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            x509CRLStoreSelector.setMinCRLNumber(x509CRLSelector.getMinCRL());
            return x509CRLStoreSelector;
        } catch (IOException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public Object clone() {
        X509CRLStoreSelector a = a((X509CRLSelector) this);
        a.a = this.a;
        a.b = this.b;
        a.c = this.c;
        a.f = this.f;
        a.e = this.e;
        a.d = Arrays.b(this.d);
        return a;
    }

    public boolean c() {
        return this.b;
    }

    public void b(boolean z) {
        this.b = z;
    }

    public void a(BigInteger bigInteger) {
        this.c = bigInteger;
    }

    public void a(byte[] bArr) {
        this.d = Arrays.b(bArr);
    }
}
