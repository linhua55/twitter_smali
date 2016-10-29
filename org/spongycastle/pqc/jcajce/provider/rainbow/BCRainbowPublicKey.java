package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.PublicKey;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPublicKey;
import org.spongycastle.pqc.crypto.rainbow.RainbowParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.provider.util.KeyUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class BCRainbowPublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;
    private int docLength;
    private RainbowParameters rainbowParams;

    public BCRainbowPublicKey(int i, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.docLength = i;
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public BCRainbowPublicKey(RainbowPublicKeySpec rainbowPublicKeySpec) {
        this(rainbowPublicKeySpec.a(), rainbowPublicKeySpec.b(), rainbowPublicKeySpec.c(), rainbowPublicKeySpec.d());
    }

    public BCRainbowPublicKey(RainbowPublicKeyParameters rainbowPublicKeyParameters) {
        this(rainbowPublicKeyParameters.b(), rainbowPublicKeyParameters.c(), rainbowPublicKeyParameters.d(), rainbowPublicKeyParameters.e());
    }

    public int a() {
        return this.docLength;
    }

    public short[][] b() {
        return this.coeffquadratic;
    }

    public short[][] c() {
        short[][] sArr = new short[this.coeffsingular.length][];
        for (int i = 0; i != this.coeffsingular.length; i++) {
            sArr[i] = Arrays.b(this.coeffsingular[i]);
        }
        return sArr;
    }

    public short[] d() {
        return Arrays.b(this.coeffscalar);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCRainbowPublicKey)) {
            return false;
        }
        BCRainbowPublicKey bCRainbowPublicKey = (BCRainbowPublicKey) obj;
        if (this.docLength == bCRainbowPublicKey.a() && RainbowUtil.a(this.coeffquadratic, bCRainbowPublicKey.b()) && RainbowUtil.a(this.coeffsingular, bCRainbowPublicKey.c()) && RainbowUtil.a(this.coeffscalar, bCRainbowPublicKey.d())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.docLength * 37) + Arrays.a(this.coeffquadratic)) * 37) + Arrays.a(this.coeffsingular)) * 37) + Arrays.a(this.coeffscalar);
    }

    public final String getAlgorithm() {
        return "Rainbow";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        return KeyUtil.a(new AlgorithmIdentifier(PQCObjectIdentifiers.a, DERNull.a), new RainbowPublicKey(this.docLength, this.coeffquadratic, this.coeffsingular, this.coeffscalar));
    }
}
