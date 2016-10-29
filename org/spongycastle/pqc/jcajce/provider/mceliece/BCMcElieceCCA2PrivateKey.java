package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McElieceCCA2PrivateKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Parameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* compiled from: Twttr */
public class BCMcElieceCCA2PrivateKey implements PrivateKey, CipherParameters {
    private static final long serialVersionUID = 1;
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;
    private GF2Matrix h;
    private int k;
    private McElieceCCA2Parameters mcElieceCCA2Params;
    private int n;
    private String oid;
    private Permutation p;
    private PolynomialGF2mSmallM[] qInv;

    public BCMcElieceCCA2PrivateKey(String str, int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, GF2Matrix gF2Matrix, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        this.oid = str;
        this.n = i;
        this.k = i2;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.p = permutation;
        this.h = gF2Matrix;
        this.qInv = polynomialGF2mSmallMArr;
    }

    public BCMcElieceCCA2PrivateKey(McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters) {
        this(mcElieceCCA2PrivateKeyParameters.k(), mcElieceCCA2PrivateKeyParameters.c(), mcElieceCCA2PrivateKeyParameters.d(), mcElieceCCA2PrivateKeyParameters.f(), mcElieceCCA2PrivateKeyParameters.g(), mcElieceCCA2PrivateKeyParameters.h(), mcElieceCCA2PrivateKeyParameters.i(), mcElieceCCA2PrivateKeyParameters.j());
        this.mcElieceCCA2Params = mcElieceCCA2PrivateKeyParameters.b();
    }

    public String getAlgorithm() {
        return "McEliece";
    }

    public int a() {
        return this.n;
    }

    public int b() {
        return this.k;
    }

    public GF2mField c() {
        return this.field;
    }

    public PolynomialGF2mSmallM d() {
        return this.goppaPoly;
    }

    public Permutation e() {
        return this.p;
    }

    public GF2Matrix f() {
        return this.h;
    }

    public PolynomialGF2mSmallM[] g() {
        return this.qInv;
    }

    public String toString() {
        return (("" + " extension degree of the field      : " + this.n + "\n") + " dimension of the code              : " + this.k + "\n") + " irreducible Goppa polynomial       : " + this.goppaPoly + "\n";
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCMcElieceCCA2PrivateKey)) {
            return false;
        }
        BCMcElieceCCA2PrivateKey bCMcElieceCCA2PrivateKey = (BCMcElieceCCA2PrivateKey) obj;
        if (this.n == bCMcElieceCCA2PrivateKey.n && this.k == bCMcElieceCCA2PrivateKey.k && this.field.equals(bCMcElieceCCA2PrivateKey.field) && this.goppaPoly.equals(bCMcElieceCCA2PrivateKey.goppaPoly) && this.p.equals(bCMcElieceCCA2PrivateKey.p) && this.h.equals(bCMcElieceCCA2PrivateKey.h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.k + this.n) + this.field.hashCode()) + this.goppaPoly.hashCode()) + this.p.hashCode()) + this.h.hashCode();
    }

    public String h() {
        return this.oid;
    }

    protected ASN1ObjectIdentifier i() {
        return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.2");
    }

    public byte[] getEncoded() {
        try {
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(i(), DERNull.a), new McElieceCCA2PrivateKey(new ASN1ObjectIdentifier(this.oid), this.n, this.k, this.field, this.goppaPoly, this.p, this.h, this.qInv)).f();
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getFormat() {
        return null;
    }

    public McElieceCCA2Parameters j() {
        return this.mcElieceCCA2Params;
    }
}
