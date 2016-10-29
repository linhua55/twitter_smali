package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McEliecePrivateKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* compiled from: Twttr */
public class BCMcEliecePrivateKey implements PrivateKey, CipherParameters {
    private static final long serialVersionUID = 1;
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;
    private GF2Matrix h;
    private int k;
    private McElieceParameters mcElieceParams;
    private int n;
    private String oid;
    private Permutation p1;
    private Permutation p2;
    private PolynomialGF2mSmallM[] qInv;
    private GF2Matrix sInv;

    public BCMcEliecePrivateKey(String str, int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, GF2Matrix gF2Matrix, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix2, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        this.oid = str;
        this.n = i;
        this.k = i2;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.sInv = gF2Matrix;
        this.p1 = permutation;
        this.p2 = permutation2;
        this.h = gF2Matrix2;
        this.qInv = polynomialGF2mSmallMArr;
    }

    public BCMcEliecePrivateKey(McEliecePrivateKeyParameters mcEliecePrivateKeyParameters) {
        this(mcEliecePrivateKeyParameters.l(), mcEliecePrivateKeyParameters.c(), mcEliecePrivateKeyParameters.d(), mcEliecePrivateKeyParameters.e(), mcEliecePrivateKeyParameters.f(), mcEliecePrivateKeyParameters.g(), mcEliecePrivateKeyParameters.h(), mcEliecePrivateKeyParameters.i(), mcEliecePrivateKeyParameters.j(), mcEliecePrivateKeyParameters.k());
        this.mcElieceParams = mcEliecePrivateKeyParameters.b();
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

    public GF2Matrix e() {
        return this.sInv;
    }

    public Permutation f() {
        return this.p1;
    }

    public Permutation g() {
        return this.p2;
    }

    public GF2Matrix h() {
        return this.h;
    }

    public PolynomialGF2mSmallM[] i() {
        return this.qInv;
    }

    public String j() {
        return this.oid;
    }

    public String toString() {
        return (((((" length of the code          : " + this.n + "\n") + " dimension of the code       : " + this.k + "\n") + " irreducible Goppa polynomial: " + this.goppaPoly + "\n") + " (k x k)-matrix S^-1         : " + this.sInv + "\n") + " permutation P1              : " + this.p1 + "\n") + " permutation P2              : " + this.p2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCMcEliecePrivateKey)) {
            return false;
        }
        BCMcEliecePrivateKey bCMcEliecePrivateKey = (BCMcEliecePrivateKey) obj;
        if (this.n == bCMcEliecePrivateKey.n && this.k == bCMcEliecePrivateKey.k && this.field.equals(bCMcEliecePrivateKey.field) && this.goppaPoly.equals(bCMcEliecePrivateKey.goppaPoly) && this.sInv.equals(bCMcEliecePrivateKey.sInv) && this.p1.equals(bCMcEliecePrivateKey.p1) && this.p2.equals(bCMcEliecePrivateKey.p2) && this.h.equals(bCMcEliecePrivateKey.h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.k + this.n) + this.field.hashCode()) + this.goppaPoly.hashCode()) + this.sInv.hashCode()) + this.p1.hashCode()) + this.p2.hashCode()) + this.h.hashCode();
    }

    protected ASN1ObjectIdentifier k() {
        return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
    }

    public byte[] getEncoded() {
        try {
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(k(), DERNull.a), new McEliecePrivateKey(new ASN1ObjectIdentifier(this.oid), this.n, this.k, this.field, this.goppaPoly, this.sInv, this.p1, this.p2, this.h, this.qInv)).f();
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

    public McElieceParameters l() {
        return this.mcElieceParams;
    }
}
