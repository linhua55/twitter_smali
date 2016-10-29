package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McElieceCCA2PublicKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Parameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

/* compiled from: Twttr */
public class BCMcElieceCCA2PublicKey implements PublicKey, CipherParameters {
    private static final long serialVersionUID = 1;
    private McElieceCCA2Parameters McElieceCCA2Params;
    private GF2Matrix g;
    private int n;
    private String oid;
    private int t;

    public BCMcElieceCCA2PublicKey(String str, int i, int i2, GF2Matrix gF2Matrix) {
        this.oid = str;
        this.n = i;
        this.t = i2;
        this.g = gF2Matrix;
    }

    public BCMcElieceCCA2PublicKey(McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters) {
        this(mcElieceCCA2PublicKeyParameters.g(), mcElieceCCA2PublicKeyParameters.c(), mcElieceCCA2PublicKeyParameters.d(), mcElieceCCA2PublicKeyParameters.e());
        this.McElieceCCA2Params = mcElieceCCA2PublicKeyParameters.b();
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
        if (obj == null || !(obj instanceof BCMcElieceCCA2PublicKey)) {
            return false;
        }
        BCMcElieceCCA2PublicKey bCMcElieceCCA2PublicKey = (BCMcElieceCCA2PublicKey) obj;
        if (this.n == bCMcElieceCCA2PublicKey.n && this.t == bCMcElieceCCA2PublicKey.t && this.g.equals(bCMcElieceCCA2PublicKey.g)) {
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
        return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.2");
    }

    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(e(), DERNull.a), new McElieceCCA2PublicKey(new ASN1ObjectIdentifier(this.oid), this.n, this.t, this.g)).f();
        } catch (IOException e) {
            return null;
        }
    }

    public String getFormat() {
        return null;
    }

    public McElieceCCA2Parameters f() {
        return this.McElieceCCA2Params;
    }
}
