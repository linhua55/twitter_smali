package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

/* compiled from: Twttr */
public class HMacDSAKCalculator implements DSAKCalculator {
    private static final BigInteger a;
    private final HMac b;
    private final byte[] c;
    private final byte[] d;
    private BigInteger e;

    static {
        a = BigInteger.valueOf(0);
    }

    public HMacDSAKCalculator(Digest digest) {
        this.b = new HMac(digest);
        this.d = new byte[this.b.b()];
        this.c = new byte[this.b.b()];
    }

    public boolean a() {
        return true;
    }

    public void a(BigInteger bigInteger, SecureRandom secureRandom) {
        throw new IllegalStateException("Operation not supported");
    }

    public void a(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.e = bigInteger;
        Arrays.a(this.d, (byte) 1);
        Arrays.a(this.c, (byte) 0);
        byte[] bArr2 = new byte[((bigInteger.bitLength() + 7) / 8)];
        Object a = BigIntegers.a(bigInteger2);
        System.arraycopy(a, 0, bArr2, bArr2.length - a.length, a.length);
        byte[] bArr3 = new byte[((bigInteger.bitLength() + 7) / 8)];
        BigInteger a2 = a(bArr);
        if (a2.compareTo(bigInteger) > 0) {
            a2 = a2.subtract(bigInteger);
        }
        a = BigIntegers.a(a2);
        System.arraycopy(a, 0, bArr3, bArr3.length - a.length, a.length);
        this.b.a(new KeyParameter(this.c));
        this.b.a(this.d, 0, this.d.length);
        this.b.a((byte) 0);
        this.b.a(bArr2, 0, bArr2.length);
        this.b.a(bArr3, 0, bArr3.length);
        this.b.a(this.c, 0);
        this.b.a(new KeyParameter(this.c));
        this.b.a(this.d, 0, this.d.length);
        this.b.a(this.d, 0);
        this.b.a(this.d, 0, this.d.length);
        this.b.a((byte) 1);
        this.b.a(bArr2, 0, bArr2.length);
        this.b.a(bArr3, 0, bArr3.length);
        this.b.a(this.c, 0);
        this.b.a(new KeyParameter(this.c));
        this.b.a(this.d, 0, this.d.length);
        this.b.a(this.d, 0);
    }

    public BigInteger b() {
        Object obj = new byte[((this.e.bitLength() + 7) / 8)];
        while (true) {
            int i = 0;
            while (i < obj.length) {
                this.b.a(this.d, 0, this.d.length);
                this.b.a(this.d, 0);
                int min = Math.min(obj.length - i, this.d.length);
                System.arraycopy(this.d, 0, obj, i, min);
                i += min;
            }
            BigInteger a = a(obj);
            if (a.compareTo(a) > 0 && a.compareTo(this.e) < 0) {
                return a;
            }
            this.b.a(this.d, 0, this.d.length);
            this.b.a((byte) 0);
            this.b.a(this.c, 0);
            this.b.a(new KeyParameter(this.c));
            this.b.a(this.d, 0, this.d.length);
            this.b.a(this.d, 0);
        }
    }

    private BigInteger a(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bArr.length * 8 > this.e.bitLength()) {
            return bigInteger.shiftRight((bArr.length * 8) - this.e.bitLength());
        }
        return bigInteger;
    }
}
