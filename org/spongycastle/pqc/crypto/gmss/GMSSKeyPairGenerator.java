package org.spongycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSignature;

/* compiled from: Twttr */
public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private GMSSRandom a;
    private byte[][] b;
    private byte[][] c;
    private byte[][] d;
    private GMSSDigestProvider e;
    private int f;
    private int g;
    private boolean h;
    private GMSSParameters i;
    private int[] j;
    private int[] k;
    private int[] l;
    private GMSSKeyGenerationParameters m;

    private AsymmetricCipherKeyPair b() {
        int i;
        if (!this.h) {
            c();
        }
        byte[][][] bArr = new byte[this.g][][];
        byte[][][] bArr2 = new byte[(this.g - 1)][][];
        Treehash[][] treehashArr = new Treehash[this.g][];
        Treehash[][] treehashArr2 = new Treehash[(this.g - 1)][];
        Vector[] vectorArr = new Vector[this.g];
        Vector[] vectorArr2 = new Vector[(this.g - 1)];
        Vector[][] vectorArr3 = new Vector[this.g][];
        Vector[][] vectorArr4 = new Vector[(this.g - 1)][];
        for (int i2 = 0; i2 < this.g; i2++) {
            bArr[i2] = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.j[i2], this.f});
            treehashArr[i2] = new Treehash[(this.j[i2] - this.l[i2])];
            if (i2 > 0) {
                i = i2 - 1;
                int[] iArr = new int[]{this.j[i2], this.f};
                bArr2[i] = (byte[][]) Array.newInstance(Byte.TYPE, iArr);
                treehashArr2[i2 - 1] = new Treehash[(this.j[i2] - this.l[i2])];
            }
            vectorArr[i2] = new Vector();
            if (i2 > 0) {
                vectorArr2[i2 - 1] = new Vector();
            }
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.g, this.f});
        byte[][] bArr4 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.g - 1, this.f});
        byte[][] bArr5 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.g, this.f});
        i = 0;
        while (true) {
            int i3 = this.g;
            if (i >= r0) {
                break;
            }
            byte[][] bArr6 = this.b;
            System.arraycopy(r0[i], 0, bArr5[i], 0, this.f);
            i++;
        }
        int[] iArr2 = new int[]{this.g - 1, this.f};
        this.d = (byte[][]) Array.newInstance(Byte.TYPE, iArr2);
        for (int i4 = this.g - 1; i4 >= 0; i4--) {
            GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.j[i4], this.l[i4], this.e);
            try {
                if (i4 == this.g - 1) {
                    gMSSRootCalc = a(null, vectorArr[i4], bArr5[i4], i4);
                } else {
                    gMSSRootCalc = a(bArr3[i4 + 1], vectorArr[i4], bArr5[i4], i4);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            i3 = 0;
            while (true) {
                if (i3 >= this.j[i4]) {
                    break;
                }
                System.arraycopy(gMSSRootCalc.b()[i3], 0, bArr[i4][i3], 0, this.f);
                i3++;
            }
            vectorArr3[i4] = gMSSRootCalc.d();
            treehashArr[i4] = gMSSRootCalc.c();
            System.arraycopy(gMSSRootCalc.e(), 0, bArr3[i4], 0, this.f);
        }
        for (i3 = this.g - 2; i3 >= 0; i3--) {
            GMSSRootCalc a = a(vectorArr2[i3], bArr5[i3 + 1], i3 + 1);
            i = 0;
            while (true) {
                if (i >= this.j[i3 + 1]) {
                    break;
                }
                System.arraycopy(a.b()[i], 0, bArr2[i3][i], 0, this.f);
                i++;
            }
            vectorArr4[i3] = a.d();
            treehashArr2[i3] = a.c();
            System.arraycopy(a.e(), 0, bArr4[i3], 0, this.f);
            System.arraycopy(bArr5[i3 + 1], 0, this.c[i3], 0, this.f);
        }
        AsymmetricKeyParameter gMSSPublicKeyParameters = new GMSSPublicKeyParameters(bArr3[0], this.i);
        return new AsymmetricCipherKeyPair(gMSSPublicKeyParameters, new GMSSPrivateKeyParameters(this.b, this.c, bArr, bArr2, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, bArr4, this.d, this.i, this.e));
    }

    private GMSSRootCalc a(byte[] bArr, Vector vector, byte[] bArr2, int i) {
        byte[] bArr3 = new byte[this.f];
        bArr3 = new byte[this.f];
        bArr3 = this.a.a(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.j[i], this.l[i], this.e);
        gMSSRootCalc.a(vector);
        if (i == this.g - 1) {
            bArr3 = new WinternitzOTSignature(bArr3, this.e.a(), this.k[i]).a();
        } else {
            this.d[i] = new WinternitzOTSignature(bArr3, this.e.a(), this.k[i]).a(bArr);
            bArr3 = new WinternitzOTSVerify(this.e.a(), this.k[i]).a(bArr, this.d[i]);
        }
        gMSSRootCalc.a(bArr3);
        int i2 = 3;
        int i3 = 0;
        for (int i4 = 1; i4 < (1 << this.j[i]); i4++) {
            if (i4 == i2 && i3 < this.j[i] - this.l[i]) {
                gMSSRootCalc.a(bArr2, i3);
                i2 *= 2;
                i3++;
            }
            gMSSRootCalc.a(new WinternitzOTSignature(this.a.a(bArr2), this.e.a(), this.k[i]).a());
        }
        if (gMSSRootCalc.a()) {
            return gMSSRootCalc;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private GMSSRootCalc a(Vector vector, byte[] bArr, int i) {
        int i2 = 0;
        byte[] bArr2 = new byte[this.g];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.j[i], this.l[i], this.e);
        gMSSRootCalc.a(vector);
        int i3 = 3;
        int i4 = 0;
        while (i2 < (1 << this.j[i])) {
            if (i2 == i3 && i4 < this.j[i] - this.l[i]) {
                gMSSRootCalc.a(bArr, i4);
                i3 *= 2;
                i4++;
            }
            gMSSRootCalc.a(new WinternitzOTSignature(this.a.a(bArr), this.e.a(), this.k[i]).a());
            i2++;
        }
        if (gMSSRootCalc.a()) {
            return gMSSRootCalc;
        }
        System.err.println("N\ufffdchster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    public void a(KeyGenerationParameters keyGenerationParameters) {
        this.m = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.i = new GMSSParameters(this.m.c().a(), this.m.c().b(), this.m.c().c(), this.m.c().d());
        this.g = this.i.a();
        this.j = this.i.b();
        this.k = this.i.c();
        this.l = this.i.d();
        this.b = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.g, this.f});
        this.c = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.g - 1, this.f});
        SecureRandom secureRandom = new SecureRandom();
        for (int i = 0; i < this.g; i++) {
            secureRandom.nextBytes(this.b[i]);
            this.a.a(this.b[i]);
        }
        this.h = true;
    }

    private void c() {
        int[] iArr = new int[]{10, 10, 10, 10};
        a(new GMSSKeyGenerationParameters(new SecureRandom(), new GMSSParameters(iArr.length, iArr, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    public AsymmetricCipherKeyPair a() {
        return b();
    }
}
