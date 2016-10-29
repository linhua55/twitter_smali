package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McEliecePublicKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

/* compiled from: Twttr */
public class BCMcEliecePublicKey implements PublicKey, CipherParameters {
    private static final long serialVersionUID = 1;
    private McElieceParameters McElieceParams;
    private GF2Matrix g;
    private int n;
    private String oid;
    private int t;

    public BCMcEliecePublicKey(String str, int i, int i2, GF2Matrix gF2Matrix) {
        this.oid = str;
        this.n = i;
        this.t = i2;
        this.g = gF2Matrix;
    }

    public BCMcEliecePublicKey(McEliecePublicKeyParameters mcEliecePublicKeyParameters) {
        this(mcEliecePublicKeyParameters.f(), mcEliecePublicKeyParameters.c(), mcEliecePublicKeyParameters.d(), mcEliecePublicKeyParameters.e());
        this.McElieceParams = mcEliecePublicKeyParameters.b();
    }

    public String getAlgorithm() {
        return "McEliece";
    }

    public int a() {
        return this.n;
    }

    public int b() {
        return this.t;
    }

    public GF2Matrix c() {
        return this.g;
    }

    public String toString() {
        return (("McEliecePublicKey:\n" + " length of the code         : " + this.n + "\n") + " error correction capability: " + this.t + "\n") + " generator matrix           : " + this.g.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCMcEliecePublicKey)) {
            return false;
        }
        BCMcEliecePublicKey bCMcEliecePublicKey = (BCMcEliecePublicKey) obj;
        if (this.n == bCMcEliecePublicKey.n && this.t == bCMcEliecePublicKey.t && this.g.equals(bCMcEliecePublicKey.g)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.n + this.t) + this.g.hashCode();
    }

    public String d() {
        return this.oid;
    }

    protected ASN1ObjectIdentifier e() {
        return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
    }

    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(e(), DERNull.a), new McEliecePublicKey(new ASN1ObjectIdentifier(this.oid), this.n, this.t, this.g)).f();
        } catch (IOException e) {
            return null;
        }
    }

    public String getFormat() {
        return null;
    }

    public McElieceParameters f() {
        return this.McElieceParams;
    }
}
