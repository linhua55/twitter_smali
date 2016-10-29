package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.asn1.x509.CertificateList;

/* compiled from: Twttr */
public class CertificateFactory extends CertificateFactorySpi {
    private static final PEMUtil a;
    private static final PEMUtil b;
    private ASN1Set c;
    private int d;
    private InputStream e;
    private ASN1Set f;
    private int g;
    private InputStream h;

    /* compiled from: Twttr */
    class ExCertificateException extends CertificateException {
        private Throwable cause;

        public ExCertificateException(Throwable th) {
            this.cause = th;
        }

        public Throwable getCause() {
            return this.cause;
        }
    }

    public CertificateFactory() {
        this.c = null;
        this.d = 0;
        this.e = null;
        this.f = null;
        this.g = 0;
        this.h = null;
    }

    static {
        a = new PEMUtil("CERTIFICATE");
        b = new PEMUtil("CRL");
    }

    private Certificate a(ASN1InputStream aSN1InputStream) throws IOException, CertificateParsingException {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1InputStream.d();
        if (aSN1Sequence.h() <= 1 || !(aSN1Sequence.a(0) instanceof ASN1ObjectIdentifier) || !aSN1Sequence.a(0).equals(PKCSObjectIdentifiers.P)) {
            return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(aSN1Sequence));
        }
        this.c = SignedData.a(ASN1Sequence.a((ASN1TaggedObject) aSN1Sequence.a(1), true)).a();
        return a();
    }

    private Certificate a() throws CertificateParsingException {
        if (this.c != null) {
            while (this.d < this.c.e()) {
                ASN1Set aSN1Set = this.c;
                int i = this.d;
                this.d = i + 1;
                ASN1Encodable a = aSN1Set.a(i);
                if (a instanceof ASN1Sequence) {
                    return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(a));
                }
            }
        }
        return null;
    }

    private Certificate a(InputStream inputStream) throws IOException, CertificateParsingException {
        ASN1Sequence a = a.a(inputStream);
        if (a != null) {
            return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.a(a));
        }
        return null;
    }

    protected CRL a(CertificateList certificateList) throws CRLException {
        return new X509CRLObject(certificateList);
    }

    private CRL b(InputStream inputStream) throws IOException, CRLException {
        ASN1Sequence a = b.a(inputStream);
        if (a != null) {
            return a(CertificateList.a(a));
        }
        return null;
    }

    private CRL b(ASN1InputStream aSN1InputStream) throws IOException, CRLException {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1InputStream.d();
        if (aSN1Sequence.h() <= 1 || !(aSN1Sequence.a(0) instanceof ASN1ObjectIdentifier) || !aSN1Sequence.a(0).equals(PKCSObjectIdentifiers.P)) {
            return a(CertificateList.a(aSN1Sequence));
        }
        this.f = SignedData.a(ASN1Sequence.a((ASN1TaggedObject) aSN1Sequence.a(1), true)).b();
        return b();
    }

    private CRL b() throws CRLException {
        if (this.f == null || this.g >= this.f.e()) {
            return null;
        }
        ASN1Set aSN1Set = this.f;
        int i = this.g;
        this.g = i + 1;
        return a(CertificateList.a(aSN1Set.a(i)));
    }

    public Certificate engineGenerateCertificate(InputStream inputStream) throws CertificateException {
        if (this.e == null) {
            this.e = inputStream;
            this.c = null;
            this.d = 0;
        } else if (this.e != inputStream) {
            this.e = inputStream;
            this.c = null;
            this.d = 0;
        }
        try {
            if (this.c == null) {
                InputStream pushbackInputStream = new PushbackInputStream(inputStream);
                int read = pushbackInputStream.read();
                if (read == -1) {
                    return null;
                }
                pushbackInputStream.unread(read);
                if (read != 48) {
                    return a(pushbackInputStream);
                }
                return a(new ASN1InputStream(pushbackInputStream));
            } else if (this.d != this.c.e()) {
                return a();
            } else {
                this.c = null;
                this.d = 0;
                return null;
            }
        } catch (Throwable e) {
            throw new ExCertificateException(e);
        }
    }

    public Collection engineGenerateCertificates(InputStream inputStream) throws CertificateException {
        Collection arrayList = new ArrayList();
        while (true) {
            Certificate engineGenerateCertificate = engineGenerateCertificate(inputStream);
            if (engineGenerateCertificate == null) {
                return arrayList;
            }
            arrayList.add(engineGenerateCertificate);
        }
    }

    public CRL engineGenerateCRL(InputStream inputStream) throws CRLException {
        if (this.h == null) {
            this.h = inputStream;
            this.f = null;
            this.g = 0;
        } else if (this.h != inputStream) {
            this.h = inputStream;
            this.f = null;
            this.g = 0;
        }
        try {
            if (this.f == null) {
                InputStream pushbackInputStream = new PushbackInputStream(inputStream);
                int read = pushbackInputStream.read();
                if (read == -1) {
                    return null;
                }
                pushbackInputStream.unread(read);
                if (read != 48) {
                    return b(pushbackInputStream);
                }
                return b(new ASN1InputStream(pushbackInputStream, true));
            } else if (this.g != this.f.e()) {
                return b();
            } else {
                this.f = null;
                this.g = 0;
                return null;
            }
        } catch (CRLException e) {
            throw e;
        } catch (Exception e2) {
            throw new CRLException(e2.toString());
        }
    }

    public Collection engineGenerateCRLs(InputStream inputStream) throws CRLException {
        Collection arrayList = new ArrayList();
        while (true) {
            CRL engineGenerateCRL = engineGenerateCRL(inputStream);
            if (engineGenerateCRL == null) {
                return arrayList;
            }
            arrayList.add(engineGenerateCRL);
        }
    }

    public Iterator engineGetCertPathEncodings() {
        return PKIXCertPath.a.iterator();
    }

    public CertPath engineGenerateCertPath(InputStream inputStream) throws CertificateException {
        return engineGenerateCertPath(inputStream, "PkiPath");
    }

    public CertPath engineGenerateCertPath(InputStream inputStream, String str) throws CertificateException {
        return new PKIXCertPath(inputStream, str);
    }

    public CertPath engineGenerateCertPath(List list) throws CertificateException {
        for (Object next : list) {
            if (next != null && !(next instanceof X509Certificate)) {
                throw new CertificateException("list contains non X509Certificate object while creating CertPath\n" + next.toString());
            }
        }
        return new PKIXCertPath(list);
    }
}
