package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.RSAPrivateKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

/* compiled from: Twttr */
public class BCRSAPrivateCrtKey extends BCRSAPrivateKey implements RSAPrivateCrtKey {
    static final long serialVersionUID = 7834723820638524718L;
    private BigInteger crtCoefficient;
    private BigInteger primeExponentP;
    private BigInteger primeExponentQ;
    private BigInteger primeP;
    private BigInteger primeQ;
    private BigInteger publicExponent;

    BCRSAPrivateCrtKey(RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters) {
        super((RSAKeyParameters) rSAPrivateCrtKeyParameters);
        this.publicExponent = rSAPrivateCrtKeyParameters.d();
        this.primeP = rSAPrivateCrtKeyParameters.e();
        this.primeQ = rSAPrivateCrtKeyParameters.f();
        this.primeExponentP = rSAPrivateCrtKeyParameters.g();
        this.primeExponentQ = rSAPrivateCrtKeyParameters.h();
        this.crtCoefficient = rSAPrivateCrtKeyParameters.i();
    }

    BCRSAPrivateCrtKey(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        this.modulus = rSAPrivateCrtKeySpec.getModulus();
        this.publicExponent = rSAPrivateCrtKeySpec.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.primeP = rSAPrivateCrtKeySpec.getPrimeP();
        this.primeQ = rSAPrivateCrtKeySpec.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }

    BCRSAPrivateCrtKey(RSAPrivateCrtKey rSAPrivateCrtKey) {
        this.modulus = rSAPrivateCrtKey.getModulus();
        this.publicExponent = rSAPrivateCrtKey.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKey.getPrivateExponent();
        this.primeP = rSAPrivateCrtKey.getPrimeP();
        this.primeQ = rSAPrivateCrtKey.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKey.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKey.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKey.getCrtCoefficient();
    }

    BCRSAPrivateCrtKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this(RSAPrivateKey.a(privateKeyInfo.c()));
    }

    BCRSAPrivateCrtKey(RSAPrivateKey rSAPrivateKey) {
        this.modulus = rSAPrivateKey.a();
        this.publicExponent = rSAPrivateKey.b();
        this.privateExponent = rSAPrivateKey.c();
        this.primeP = rSAPrivateKey.e();
        this.primeQ = rSAPrivateKey.h();
        this.primeExponentP = rSAPrivateKey.i();
        this.primeExponentQ = rSAPrivateKey.j();
        this.crtCoefficient = rSAPrivateKey.k();
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        return KeyUtil.b(new AlgorithmIdentifier(PKCSObjectIdentifiers.n_, DERNull.a), new RSAPrivateKey(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    public BigInteger getPrimeP() {
        return this.primeP;
    }

    public BigInteger getPrimeQ() {
        return this.primeQ;
    }

    public BigInteger getPrimeExponentP() {
        return this.primeExponentP;
    }

    public BigInteger getPrimeExponentQ() {
        return this.primeExponentQ;
    }

    public BigInteger getCrtCoefficient() {
        return this.crtCoefficient;
    }

    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPrivateCrtKey)) {
            return false;
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
        if (getModulus().equals(rSAPrivateCrtKey.getModulus()) && getPublicExponent().equals(rSAPrivateCrtKey.getPublicExponent()) && getPrivateExponent().equals(rSAPrivateCrtKey.getPrivateExponent()) && getPrimeP().equals(rSAPrivateCrtKey.getPrimeP()) && getPrimeQ().equals(rSAPrivateCrtKey.getPrimeQ()) && getPrimeExponentP().equals(rSAPrivateCrtKey.getPrimeExponentP()) && getPrimeExponentQ().equals(rSAPrivateCrtKey.getPrimeExponentQ()) && getCrtCoefficient().equals(rSAPrivateCrtKey.getCrtCoefficient())) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("RSA Private CRT Key").append(property);
        stringBuffer.append("            modulus: ").append(getModulus().toString(16)).append(property);
        stringBuffer.append("    public exponent: ").append(getPublicExponent().toString(16)).append(property);
        stringBuffer.append("   private exponent: ").append(getPrivateExponent().toString(16)).append(property);
        stringBuffer.append("             primeP: ").append(getPrimeP().toString(16)).append(property);
        stringBuffer.append("             primeQ: ").append(getPrimeQ().toString(16)).append(property);
        stringBuffer.append("     primeExponentP: ").append(getPrimeExponentP().toString(16)).append(property);
        stringBuffer.append("     primeExponentQ: ").append(getPrimeExponentQ().toString(16)).append(property);
        stringBuffer.append("     crtCoefficient: ").append(getCrtCoefficient().toString(16)).append(property);
        return stringBuffer.toString();
    }
}
