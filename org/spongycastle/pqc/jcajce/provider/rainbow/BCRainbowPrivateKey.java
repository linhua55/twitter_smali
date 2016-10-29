package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;

/* compiled from: Twttr */
public class BCRainbowPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;
    private short[] b2;
    private Layer[] layers;
    private int[] vi;

    public BCRainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.b2 = sArr4;
        this.vi = iArr;
        this.layers = layerArr;
    }

    public BCRainbowPrivateKey(RainbowPrivateKeySpec rainbowPrivateKeySpec) {
        this(rainbowPrivateKeySpec.b(), rainbowPrivateKeySpec.a(), rainbowPrivateKeySpec.d(), rainbowPrivateKeySpec.c(), rainbowPrivateKeySpec.f(), rainbowPrivateKeySpec.e());
    }

    public BCRainbowPrivateKey(RainbowPrivateKeyParameters rainbowPrivateKeyParameters) {
        this(rainbowPrivateKeyParameters.d(), rainbowPrivateKeyParameters.c(), rainbowPrivateKeyParameters.f(), rainbowPrivateKeyParameters.e(), rainbowPrivateKeyParameters.h(), rainbowPrivateKeyParameters.g());
    }

    public short[][] a() {
        return this.A1inv;
    }

    public short[] b() {
        return this.b1;
    }

    public short[] c() {
        return this.b2;
    }

    public short[][] d() {
        return this.A2inv;
    }

    public Layer[] e() {
        return this.layers;
    }

    public int[] f() {
        return this.vi;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = false;
        if (obj != null && (obj instanceof BCRainbowPrivateKey)) {
            boolean z3;
            BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) obj;
            if ((RainbowUtil.a(this.A1inv, bCRainbowPrivateKey.a())) && RainbowUtil.a(this.A2inv, bCRainbowPrivateKey.d())) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 && RainbowUtil.a(this.b1, bCRainbowPrivateKey.b())) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 && RainbowUtil.a(this.b2, bCRainbowPrivateKey.c())) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!(z3 && Arrays.equals(this.vi, bCRainbowPrivateKey.f()))) {
                z = false;
            }
            if (this.layers.length == bCRainbowPrivateKey.e().length) {
                z2 = z;
                for (int length = this.layers.length - 1; length >= 0; length--) {
                    z2 &= this.layers[length].equals(bCRainbowPrivateKey.e()[length]);
                }
            }
        }
        return z2;
    }

    public int hashCode() {
        int a = org.spongycastle.util.Arrays.a(this.vi) + (((((((((this.layers.length * 37) + org.spongycastle.util.Arrays.a(this.A1inv)) * 37) + org.spongycastle.util.Arrays.a(this.b1)) * 37) + org.spongycastle.util.Arrays.a(this.A2inv)) * 37) + org.spongycastle.util.Arrays.a(this.b2)) * 37);
        for (int length = this.layers.length - 1; length >= 0; length--) {
            a = (a * 37) + this.layers[length].hashCode();
        }
        return a;
    }

    public final String getAlgorithm() {
        return "Rainbow";
    }

    public byte[] getEncoded() {
        try {
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.a, DERNull.a), new RainbowPrivateKey(this.A1inv, this.b1, this.A2inv, this.b2, this.vi, this.layers)).f();
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
        return "PKCS#8";
    }
}
