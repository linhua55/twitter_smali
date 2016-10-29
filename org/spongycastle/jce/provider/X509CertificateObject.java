package org.spongycastle.jce.provider;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1OutputStream;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.misc.MiscObjectIdentifiers;
import org.spongycastle.asn1.misc.NetscapeCertType;
import org.spongycastle.asn1.misc.NetscapeRevocationURL;
import org.spongycastle.asn1.misc.VerisignCzagExtension;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.style.RFC4519Style;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.KeyUsage;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.X509Principal;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class X509CertificateObject extends X509Certificate implements PKCS12BagAttributeCarrier {
    private PKCS12BagAttributeCarrier attrCarrier;
    private BasicConstraints basicConstraints;
    private Certificate c;
    private int hashValue;
    private boolean hashValueSet;
    private boolean[] keyUsage;

    public X509CertificateObject(Certificate certificate) throws CertificateParsingException {
        int i = 9;
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.c = certificate;
        try {
            byte[] a = a("2.5.29.19");
            if (a != null) {
                this.basicConstraints = BasicConstraints.a(ASN1Primitive.b(a));
            }
            try {
                a = a("2.5.29.15");
                if (a != null) {
                    DERBitString a2 = DERBitString.a(ASN1Primitive.b(a));
                    byte[] e = a2.e();
                    int length = (e.length * 8) - a2.h();
                    if (length >= 9) {
                        i = length;
                    }
                    this.keyUsage = new boolean[i];
                    for (int i2 = 0; i2 != length; i2++) {
                        boolean z;
                        boolean[] zArr = this.keyUsage;
                        if ((e[i2 / 8] & (128 >>> (i2 % 8))) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zArr[i2] = z;
                    }
                    return;
                }
                this.keyUsage = null;
            } catch (Exception e2) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + e2);
            }
        } catch (Exception e22) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + e22);
        }
    }

    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.c.i().a());
        } else if (date.getTime() < getNotBefore().getTime()) {
            throw new CertificateNotYetValidException("certificate not valid till " + this.c.h().a());
        }
    }

    public int getVersion() {
        return this.c.b();
    }

    public BigInteger getSerialNumber() {
        return this.c.c().a();
    }

    public Principal getIssuerDN() {
        try {
            return new X509Principal(X500Name.a(this.c.e().f()));
        } catch (IOException e) {
            return null;
        }
    }

    public X500Principal getIssuerX500Principal() {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ASN1OutputStream(byteArrayOutputStream).a(this.c.e());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    public Principal getSubjectDN() {
        return new X509Principal(X500Name.a(this.c.j().d()));
    }

    public X500Principal getSubjectX500Principal() {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ASN1OutputStream(byteArrayOutputStream).a(this.c.j());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    public Date getNotBefore() {
        return this.c.h().b();
    }

    public Date getNotAfter() {
        return this.c.i().b();
    }

    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.c.a().a("DER");
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    public byte[] getSignature() {
        return this.c.m().e();
    }

    public String getSigAlgName() {
        Provider provider = Security.getProvider("SC");
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            String property2 = providers[i].getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    public String getSigAlgOID() {
        return this.c.l().b().a();
    }

    public byte[] getSigAlgParams() {
        byte[] bArr = null;
        if (this.c.l().c() != null) {
            try {
                bArr = this.c.l().c().d().a("DER");
            } catch (IOException e) {
            }
        }
        return bArr;
    }

    public boolean[] getIssuerUniqueID() {
        DERBitString l = this.c.a().l();
        if (l == null) {
            return null;
        }
        byte[] e = l.e();
        boolean[] zArr = new boolean[((e.length * 8) - l.h())];
        for (int i = 0; i != zArr.length; i++) {
            boolean z;
            if ((e[i / 8] & (128 >>> (i % 8))) != 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
        }
        return zArr;
    }

    public boolean[] getSubjectUniqueID() {
        DERBitString m = this.c.a().m();
        if (m == null) {
            return null;
        }
        byte[] e = m.e();
        boolean[] zArr = new boolean[((e.length * 8) - m.h())];
        for (int i = 0; i != zArr.length; i++) {
            boolean z;
            if ((e[i / 8] & (128 >>> (i % 8))) != 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
        }
        return zArr;
    }

    public boolean[] getKeyUsage() {
        return this.keyUsage;
    }

    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] a = a("2.5.29.37");
        if (a == null) {
            return null;
        }
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(a).d();
            List arrayList = new ArrayList();
            for (int i = 0; i != aSN1Sequence.h(); i++) {
                arrayList.add(((ASN1ObjectIdentifier) aSN1Sequence.a(i)).a());
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Exception e) {
            throw new CertificateParsingException("error processing extended key usage extension");
        }
    }

    public int getBasicConstraints() {
        if (this.basicConstraints == null || !this.basicConstraints.a()) {
            return -1;
        }
        if (this.basicConstraints.b() == null) {
            return Integer.MAX_VALUE;
        }
        return this.basicConstraints.b().intValue();
    }

    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return a(a(Extension.e.a()));
    }

    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return a(a(Extension.f.a()));
    }

    public Set getCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            Set hashSet = new HashSet();
            Extensions n = this.c.a().n();
            if (n != null) {
                Enumeration a = n.a();
                while (a.hasMoreElements()) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a.nextElement();
                    if (n.a(aSN1ObjectIdentifier).b()) {
                        hashSet.add(aSN1ObjectIdentifier.a());
                    }
                }
                return hashSet;
            }
        }
        return null;
    }

    private byte[] a(String str) {
        Extensions n = this.c.a().n();
        if (n != null) {
            Extension a = n.a(new ASN1ObjectIdentifier(str));
            if (a != null) {
                return a.c().e();
            }
        }
        return null;
    }

    public byte[] getExtensionValue(String str) {
        Extensions n = this.c.a().n();
        if (n != null) {
            Extension a = n.a(new ASN1ObjectIdentifier(str));
            if (a != null) {
                try {
                    return a.c().f();
                } catch (Exception e) {
                    throw new IllegalStateException("error parsing " + e.toString());
                }
            }
        }
        return null;
    }

    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            Set hashSet = new HashSet();
            Extensions n = this.c.a().n();
            if (n != null) {
                Enumeration a = n.a();
                while (a.hasMoreElements()) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a.nextElement();
                    if (!n.a(aSN1ObjectIdentifier).b()) {
                        hashSet.add(aSN1ObjectIdentifier.a());
                    }
                }
                return hashSet;
            }
        }
        return null;
    }

    public boolean hasUnsupportedCriticalExtension() {
        if (getVersion() == 3) {
            Extensions n = this.c.a().n();
            if (n != null) {
                Enumeration a = n.a();
                while (a.hasMoreElements()) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a.nextElement();
                    String a2 = aSN1ObjectIdentifier.a();
                    if (!a2.equals(RFC3280CertPathUtilities.m) && !a2.equals(RFC3280CertPathUtilities.a) && !a2.equals(RFC3280CertPathUtilities.b) && !a2.equals(RFC3280CertPathUtilities.c) && !a2.equals(RFC3280CertPathUtilities.i) && !a2.equals(RFC3280CertPathUtilities.d) && !a2.equals(RFC3280CertPathUtilities.f) && !a2.equals(RFC3280CertPathUtilities.g) && !a2.equals(RFC3280CertPathUtilities.h) && !a2.equals(RFC3280CertPathUtilities.j) && !a2.equals(RFC3280CertPathUtilities.k) && n.a(aSN1ObjectIdentifier).b()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public PublicKey getPublicKey() {
        try {
            return BouncyCastleProvider.a(this.c.k());
        } catch (IOException e) {
            return null;
        }
    }

    public byte[] getEncoded() throws CertificateEncodingException {
        try {
            return this.c.a("DER");
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof java.security.cert.Certificate)) {
            return z;
        }
        try {
            return Arrays.a(getEncoded(), ((java.security.cert.Certificate) obj).getEncoded());
        } catch (CertificateEncodingException e) {
            return z;
        }
    }

    public synchronized int hashCode() {
        if (!this.hashValueSet) {
            this.hashValue = b();
            this.hashValueSet = true;
        }
        return this.hashValue;
    }

    private int b() {
        try {
            byte[] encoded = getEncoded();
            int i = 1;
            int i2 = 0;
            while (i < encoded.length) {
                int i3 = (encoded[i] * i) + i2;
                i++;
                i2 = i3;
            }
            return i2;
        } catch (CertificateEncodingException e) {
            return 0;
        }
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.attrCarrier.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.attrCarrier.a();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("  [0]         Version: ").append(getVersion()).append(property);
        stringBuffer.append("         SerialNumber: ").append(getSerialNumber()).append(property);
        stringBuffer.append("             IssuerDN: ").append(getIssuerDN()).append(property);
        stringBuffer.append("           Start Date: ").append(getNotBefore()).append(property);
        stringBuffer.append("           Final Date: ").append(getNotAfter()).append(property);
        stringBuffer.append("            SubjectDN: ").append(getSubjectDN()).append(property);
        stringBuffer.append("           Public Key: ").append(getPublicKey()).append(property);
        stringBuffer.append("  Signature Algorithm: ").append(getSigAlgName()).append(property);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ").append(new String(Hex.a(signature, 0, 20))).append(property);
        for (int i = 20; i < signature.length; i += 20) {
            if (i < signature.length - 20) {
                stringBuffer.append("                       ").append(new String(Hex.a(signature, i, 20))).append(property);
            } else {
                stringBuffer.append("                       ").append(new String(Hex.a(signature, i, signature.length - i))).append(property);
            }
        }
        Extensions n = this.c.a().n();
        if (n != null) {
            Enumeration a = n.a();
            if (a.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (a.hasMoreElements()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a.nextElement();
                Extension a2 = n.a(aSN1ObjectIdentifier);
                if (a2.c() != null) {
                    ASN1InputStream aSN1InputStream = new ASN1InputStream(a2.c().e());
                    stringBuffer.append("                       critical(").append(a2.b()).append(") ");
                    try {
                        if (aSN1ObjectIdentifier.equals(Extension.g)) {
                            stringBuffer.append(BasicConstraints.a(aSN1InputStream.d())).append(property);
                        } else if (aSN1ObjectIdentifier.equals(Extension.c)) {
                            stringBuffer.append(KeyUsage.a(aSN1InputStream.d())).append(property);
                        } else if (aSN1ObjectIdentifier.equals(MiscObjectIdentifiers.b)) {
                            stringBuffer.append(new NetscapeCertType((DERBitString) aSN1InputStream.d())).append(property);
                        } else if (aSN1ObjectIdentifier.equals(MiscObjectIdentifiers.d)) {
                            stringBuffer.append(new NetscapeRevocationURL((DERIA5String) aSN1InputStream.d())).append(property);
                        } else if (aSN1ObjectIdentifier.equals(MiscObjectIdentifiers.k)) {
                            stringBuffer.append(new VerisignCzagExtension((DERIA5String) aSN1InputStream.d())).append(property);
                        } else {
                            stringBuffer.append(aSN1ObjectIdentifier.a());
                            stringBuffer.append(" value = ").append(ASN1Dump.a(aSN1InputStream.d())).append(property);
                        }
                    } catch (Exception e) {
                        stringBuffer.append(aSN1ObjectIdentifier.a());
                        stringBuffer.append(" value = ").append("*****").append(property);
                    }
                } else {
                    stringBuffer.append(property);
                }
            }
        }
        return stringBuffer.toString();
    }

    public final void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature instance;
        String a = X509SignatureUtil.a(this.c.l());
        try {
            instance = Signature.getInstance(a, "SC");
        } catch (Exception e) {
            instance = Signature.getInstance(a);
        }
        a(publicKey, instance);
    }

    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        a(publicKey, Signature.getInstance(X509SignatureUtil.a(this.c.l()), str));
    }

    private void a(PublicKey publicKey, Signature signature) throws CertificateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (a(this.c.l(), this.c.a().c())) {
            X509SignatureUtil.a(signature, this.c.l().c());
            signature.initVerify(publicKey);
            signature.update(getTBSCertificate());
            if (!signature.verify(getSignature())) {
                throw new SignatureException("certificate does not verify with supplied key");
            }
            return;
        }
        throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
    }

    private boolean a(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) {
        if (!algorithmIdentifier.b().equals(algorithmIdentifier2.b())) {
            return false;
        }
        if (algorithmIdentifier.c() == null) {
            if (algorithmIdentifier2.c() == null || algorithmIdentifier2.c().equals(DERNull.a)) {
                return true;
            }
            return false;
        } else if (algorithmIdentifier2.c() != null) {
            return algorithmIdentifier.c().equals(algorithmIdentifier2.c());
        } else {
            if (algorithmIdentifier.c() == null || algorithmIdentifier.c().equals(DERNull.a)) {
                return true;
            }
            return false;
        }
    }

    private static Collection a(byte[] bArr) throws CertificateParsingException {
        if (bArr == null) {
            return null;
        }
        Collection arrayList = new ArrayList();
        Enumeration e = ASN1Sequence.a((Object) bArr).e();
        while (e.hasMoreElements()) {
            GeneralName a = GeneralName.a(e.nextElement());
            List arrayList2 = new ArrayList();
            arrayList2.add(Integers.a(a.a()));
            switch (a.a()) {
                case p.View_android_theme /*0*/:
                case p.View_paddingEnd /*3*/:
                case p.Toolbar_contentInsetStart /*5*/:
                    try {
                        arrayList2.add(a.f());
                        break;
                    } catch (Exception e2) {
                        throw new CertificateParsingException(e2.getMessage());
                    }
                case p.View_android_focusable /*1*/:
                case p.View_paddingStart /*2*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    arrayList2.add(((ASN1String) a.b()).a());
                    break;
                case p.View_theme /*4*/:
                    arrayList2.add(X500Name.a(RFC4519Style.R, a.b()).toString());
                    break;
                case p.Toolbar_contentInsetLeft /*7*/:
                    try {
                        arrayList2.add(InetAddress.getByAddress(ASN1OctetString.a((Object) a.b()).e()).getHostAddress());
                        break;
                    } catch (UnknownHostException e3) {
                        break;
                    }
                case p.Toolbar_contentInsetRight /*8*/:
                    arrayList2.add(ASN1ObjectIdentifier.a(a.b()).a());
                    break;
                default:
                    throw new IOException("Bad tag number: " + a.a());
            }
            arrayList.add(Collections.unmodifiableList(arrayList2));
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableCollection(arrayList);
    }
}
