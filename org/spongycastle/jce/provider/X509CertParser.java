package org.spongycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.x509.X509StreamParserSpi;
import org.spongycastle.x509.util.StreamParsingException;

/* compiled from: Twttr */
public class X509CertParser extends X509StreamParserSpi {
    private static final PEMUtil a;
    private ASN1Set b;
    private int c;
    private InputStream d;

    public X509CertParser() {
        this.b = null;
        this.c = 0;
        this.d = null;
    }

    static {
        a = new PEMUtil("CERTIFICATE");
    }

    private Certificate b(InputStream inputStream) throws IOException, CertificateParsingException {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(inputStream).d();
        if (aSN1Sequence.h() <= 1 || !(aSN1Sequence.a(0) instanceof ASN1ObjectIdentifier) || !aSN1Sequence.a(0).equals(PKCSObjectIdentifiers.P)) {
            return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(aSN1Sequence));
        }
        this.b = new SignedData(ASN1Sequence.a((ASN1TaggedObject) aSN1Sequence.a(1), true)).a();
        return b();
    }

    private Certificate b() throws CertificateParsingException {
        if (this.b != null) {
            while (this.c < this.b.e()) {
                ASN1Set aSN1Set = this.b;
                int i = this.c;
                this.c = i + 1;
                ASN1Encodable a = aSN1Set.a(i);
                if (a instanceof ASN1Sequence) {
                    return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(a));
                }
            }
        }
        return null;
    }

    private Certificate c(InputStream inputStream) throws IOException, CertificateParsingException {
        ASN1Sequence a = a.a(inputStream);
        if (a != null) {
            return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(a));
        }
        return null;
    }

    public void a(InputStream inputStream) {
        this.d = inputStream;
        this.b = null;
        this.c = 0;
        if (!this.d.markSupported()) {
            this.d = new BufferedInputStream(this.d);
        }
    }

    public Object a() throws StreamParsingException {
        try {
            if (this.b == null) {
                this.d.mark(10);
                int read = this.d.read();
                if (read == -1) {
                    return null;
                }
                if (read != 48) {
                    this.d.reset();
                    return c(this.d);
                }
                this.d.reset();
                return b(this.d);
            } else if (this.c != this.b.e()) {
                return b();
            } else {
                this.b = null;
                this.c = 0;
                return null;
            }
        } catch (Throwable e) {
            throw new StreamParsingException(e.toString(), e);
        }
    }
}
