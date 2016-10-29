package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

/* compiled from: Twttr */
public abstract class ECFieldElement implements ECConstants {

    /* compiled from: Twttr */
    public class F2m extends ECFieldElement {
        private int a;
        private int b;
        private int[] h;
        private LongArray i;

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger) {
            if (i3 == 0 && i4 == 0) {
                this.a = 2;
                this.h = new int[]{i2};
            } else if (i3 >= i4) {
                throw new IllegalArgumentException("k2 must be smaller than k3");
            } else if (i3 <= 0) {
                throw new IllegalArgumentException("k2 must be larger than 0");
            } else {
                this.a = 3;
                this.h = new int[]{i2, i3, i4};
            }
            this.b = i;
            this.i = new LongArray(bigInteger);
        }

        private F2m(int i, int[] iArr, LongArray longArray) {
            this.b = i;
            this.a = iArr.length == 1 ? 2 : 3;
            this.h = iArr;
            this.i = longArray;
        }

        public int h() {
            return this.i.d();
        }

        public boolean i() {
            return this.i.a();
        }

        public boolean j() {
            return this.i.b();
        }

        public boolean k() {
            return this.i.g();
        }

        public BigInteger a() {
            return this.i.e();
        }

        public int b() {
            return this.b;
        }

        public static void b(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            if ((eCFieldElement instanceof F2m) && (eCFieldElement2 instanceof F2m)) {
                F2m f2m = (F2m) eCFieldElement;
                F2m f2m2 = (F2m) eCFieldElement2;
                if (f2m.a != f2m2.a) {
                    throw new IllegalArgumentException("One of the F2m field elements has incorrect representation");
                } else if (f2m.b != f2m2.b || !Arrays.a(f2m.h, f2m2.h)) {
                    throw new IllegalArgumentException("Field elements are not elements of the same field F2m");
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Field elements are not both instances of ECFieldElement.F2m");
        }

        public ECFieldElement a(ECFieldElement eCFieldElement) {
            LongArray longArray = (LongArray) this.i.clone();
            longArray.a(((F2m) eCFieldElement).i, 0);
            return new F2m(this.b, this.h, longArray);
        }

        public ECFieldElement c() {
            return new F2m(this.b, this.h, this.i.f());
        }

        public ECFieldElement b(ECFieldElement eCFieldElement) {
            return a(eCFieldElement);
        }

        public ECFieldElement c(ECFieldElement eCFieldElement) {
            return new F2m(this.b, this.h, this.i.a(((F2m) eCFieldElement).i, this.b, this.h));
        }

        public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return b(eCFieldElement, eCFieldElement2, eCFieldElement3);
        }

        public ECFieldElement b(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            LongArray longArray = this.i;
            LongArray longArray2 = ((F2m) eCFieldElement).i;
            LongArray longArray3 = ((F2m) eCFieldElement2).i;
            LongArray longArray4 = ((F2m) eCFieldElement3).i;
            LongArray b = longArray.b(longArray2, this.b, this.h);
            longArray3 = longArray3.b(longArray4, this.b, this.h);
            if (b == longArray || b == longArray2) {
                b = (LongArray) b.clone();
            }
            b.a(longArray3, 0);
            b.a(this.b, this.h);
            return new F2m(this.b, this.h, b);
        }

        public ECFieldElement d(ECFieldElement eCFieldElement) {
            return c(eCFieldElement.f());
        }

        public ECFieldElement d() {
            return this;
        }

        public ECFieldElement e() {
            return new F2m(this.b, this.h, this.i.b(this.b, this.h));
        }

        public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            LongArray longArray = this.i;
            LongArray longArray2 = ((F2m) eCFieldElement).i;
            LongArray longArray3 = ((F2m) eCFieldElement2).i;
            LongArray c = longArray.c(this.b, this.h);
            longArray2 = longArray2.b(longArray3, this.b, this.h);
            if (c == longArray) {
                c = (LongArray) c.clone();
            }
            c.a(longArray2, 0);
            c.a(this.b, this.h);
            return new F2m(this.b, this.h, c);
        }

        public ECFieldElement f() {
            return new F2m(this.b, this.h, this.i.d(this.b, this.h));
        }

        public ECFieldElement g() {
            LongArray longArray = this.i;
            if (longArray.a() || longArray.b()) {
                return this;
            }
            return new F2m(this.b, this.h, longArray.a(this.b - 1, this.b, this.h));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof F2m)) {
                return false;
            }
            F2m f2m = (F2m) obj;
            if (this.b == f2m.b && this.a == f2m.a && Arrays.a(this.h, f2m.h) && this.i.equals(f2m.i)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.i.hashCode() ^ this.b) ^ Arrays.a(this.h);
        }
    }

    /* compiled from: Twttr */
    public class Fp extends ECFieldElement {
        BigInteger a;
        BigInteger b;
        BigInteger h;

        static BigInteger a(BigInteger bigInteger) {
            int bitLength = bigInteger.bitLength();
            if (bitLength < 96 || bigInteger.shiftRight(bitLength - 64).longValue() != -1) {
                return null;
            }
            return d.shiftLeft(bitLength).subtract(bigInteger);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2) {
            this(bigInteger, a(bigInteger), bigInteger2);
        }

        Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.a = bigInteger;
            this.b = bigInteger2;
            this.h = bigInteger3;
        }

        public BigInteger a() {
            return this.h;
        }

        public int b() {
            return this.a.bitLength();
        }

        public ECFieldElement a(ECFieldElement eCFieldElement) {
            return new Fp(this.a, this.b, a(this.h, eCFieldElement.a()));
        }

        public ECFieldElement c() {
            BigInteger add = this.h.add(ECConstants.d);
            if (add.compareTo(this.a) == 0) {
                add = ECConstants.c;
            }
            return new Fp(this.a, this.b, add);
        }

        public ECFieldElement b(ECFieldElement eCFieldElement) {
            return new Fp(this.a, this.b, c(this.h, eCFieldElement.a()));
        }

        public ECFieldElement c(ECFieldElement eCFieldElement) {
            return new Fp(this.a, this.b, b(this.h, eCFieldElement.a()));
        }

        public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.h;
            BigInteger a = eCFieldElement.a();
            BigInteger a2 = eCFieldElement2.a();
            BigInteger a3 = eCFieldElement3.a();
            return new Fp(this.a, this.b, e(bigInteger.multiply(a).subtract(a2.multiply(a3))));
        }

        public ECFieldElement b(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.h;
            BigInteger a = eCFieldElement.a();
            BigInteger a2 = eCFieldElement2.a();
            BigInteger a3 = eCFieldElement3.a();
            return new Fp(this.a, this.b, e(bigInteger.multiply(a).add(a2.multiply(a3))));
        }

        public ECFieldElement d(ECFieldElement eCFieldElement) {
            return new Fp(this.a, this.b, b(this.h, d(eCFieldElement.a())));
        }

        public ECFieldElement d() {
            return this.h.signum() == 0 ? this : new Fp(this.a, this.b, this.a.subtract(this.h));
        }

        public ECFieldElement e() {
            return new Fp(this.a, this.b, b(this.h, this.h));
        }

        public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigInteger = this.h;
            BigInteger a = eCFieldElement.a();
            BigInteger a2 = eCFieldElement2.a();
            return new Fp(this.a, this.b, e(bigInteger.multiply(bigInteger).add(a.multiply(a2))));
        }

        public ECFieldElement f() {
            return new Fp(this.a, this.b, d(this.h));
        }

        public ECFieldElement g() {
            if (j() || i()) {
                return this;
            }
            if (!this.a.testBit(0)) {
                throw new RuntimeException("not done yet");
            } else if (this.a.testBit(1)) {
                return e(new Fp(this.a, this.b, this.h.modPow(this.a.shiftRight(2).add(ECConstants.d), this.a)));
            } else if (this.a.testBit(2)) {
                BigInteger modPow = this.h.modPow(this.a.shiftRight(3), this.a);
                r1 = b(modPow, this.h);
                if (b(r1, modPow).equals(ECConstants.d)) {
                    return e(new Fp(this.a, this.b, r1));
                }
                return e(new Fp(this.a, this.b, b(r1, ECConstants.e.modPow(this.a.shiftRight(2), this.a))));
            } else {
                r1 = this.a.shiftRight(1);
                if (!this.h.modPow(r1, this.a).equals(ECConstants.d)) {
                    return null;
                }
                BigInteger bigInteger = this.h;
                BigInteger b = b(b(bigInteger));
                BigInteger add = r1.add(ECConstants.d);
                BigInteger subtract = this.a.subtract(ECConstants.d);
                Random random = new Random();
                while (true) {
                    BigInteger bigInteger2 = new BigInteger(this.a.bitLength(), random);
                    if (bigInteger2.compareTo(this.a) < 0 && e(bigInteger2.multiply(bigInteger2).subtract(b)).modPow(r1, this.a).equals(subtract)) {
                        BigInteger[] a = a(bigInteger2, bigInteger, add);
                        BigInteger bigInteger3 = a[0];
                        bigInteger2 = a[1];
                        if (b(bigInteger2, bigInteger2).equals(b)) {
                            return new Fp(this.a, this.b, c(bigInteger2));
                        }
                        if (!(bigInteger3.equals(ECConstants.d) || bigInteger3.equals(subtract))) {
                            return null;
                        }
                    }
                }
            }
        }

        private ECFieldElement e(ECFieldElement eCFieldElement) {
            return eCFieldElement.e().equals(this) ? eCFieldElement : null;
        }

        private BigInteger[] a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int bitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigInteger4 = ECConstants.d;
            BigInteger bigInteger5 = ECConstants.e;
            BigInteger bigInteger6 = ECConstants.d;
            int i = bitLength - 1;
            BigInteger bigInteger7 = bigInteger;
            BigInteger bigInteger8 = bigInteger5;
            BigInteger bigInteger9 = ECConstants.d;
            BigInteger bigInteger10 = bigInteger6;
            while (i >= lowestSetBit + 1) {
                bigInteger10 = b(bigInteger10, bigInteger9);
                if (bigInteger3.testBit(i)) {
                    bigInteger9 = b(bigInteger10, bigInteger2);
                    bigInteger4 = b(bigInteger4, bigInteger7);
                    bigInteger5 = e(bigInteger7.multiply(bigInteger8).subtract(bigInteger.multiply(bigInteger10)));
                    bigInteger6 = e(bigInteger7.multiply(bigInteger7).subtract(bigInteger9.shiftLeft(1)));
                } else {
                    bigInteger5 = e(bigInteger4.multiply(bigInteger8).subtract(bigInteger10));
                    bigInteger9 = e(bigInteger7.multiply(bigInteger8).subtract(bigInteger.multiply(bigInteger10)));
                    bigInteger4 = bigInteger5;
                    bigInteger5 = e(bigInteger8.multiply(bigInteger8).subtract(bigInteger10.shiftLeft(1)));
                    bigInteger6 = bigInteger9;
                    bigInteger9 = bigInteger10;
                }
                i--;
                bigInteger7 = bigInteger6;
                bigInteger8 = bigInteger5;
            }
            bigInteger9 = b(bigInteger10, bigInteger9);
            bigInteger5 = b(bigInteger9, bigInteger2);
            bigInteger6 = e(bigInteger4.multiply(bigInteger8).subtract(bigInteger9));
            bigInteger10 = e(bigInteger7.multiply(bigInteger8).subtract(bigInteger.multiply(bigInteger9)));
            bigInteger9 = b(bigInteger9, bigInteger5);
            bigInteger5 = bigInteger6;
            bigInteger6 = bigInteger10;
            bigInteger10 = bigInteger9;
            for (bitLength = 1; bitLength <= lowestSetBit; bitLength++) {
                bigInteger5 = b(bigInteger5, bigInteger6);
                bigInteger6 = e(bigInteger6.multiply(bigInteger6).subtract(bigInteger10.shiftLeft(1)));
                bigInteger10 = b(bigInteger10, bigInteger10);
            }
            return new BigInteger[]{bigInteger5, bigInteger6};
        }

        protected BigInteger a(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger add = bigInteger.add(bigInteger2);
            if (add.compareTo(this.a) >= 0) {
                return add.subtract(this.a);
            }
            return add;
        }

        protected BigInteger b(BigInteger bigInteger) {
            BigInteger shiftLeft = bigInteger.shiftLeft(1);
            if (shiftLeft.compareTo(this.a) >= 0) {
                return shiftLeft.subtract(this.a);
            }
            return shiftLeft;
        }

        protected BigInteger c(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.a.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        protected BigInteger d(BigInteger bigInteger) {
            int b = b();
            int i = (b + 31) >> 5;
            int[] a = Nat.a(b, this.a);
            int[] a2 = Nat.a(b, bigInteger);
            int[] a3 = Nat.a(i);
            Mod.a(a, a2, a3);
            return Nat.f(i, a3);
        }

        protected BigInteger b(BigInteger bigInteger, BigInteger bigInteger2) {
            return e(bigInteger.multiply(bigInteger2));
        }

        protected BigInteger e(BigInteger bigInteger) {
            if (this.b == null) {
                return bigInteger.mod(this.a);
            }
            Object obj;
            if (bigInteger.signum() < 0) {
                obj = 1;
            } else {
                obj = null;
            }
            if (obj != null) {
                bigInteger = bigInteger.abs();
            }
            int bitLength = this.a.bitLength();
            boolean equals = this.b.equals(ECConstants.d);
            while (bigInteger.bitLength() > bitLength + 1) {
                BigInteger shiftRight = bigInteger.shiftRight(bitLength);
                BigInteger subtract = bigInteger.subtract(shiftRight.shiftLeft(bitLength));
                if (!equals) {
                    shiftRight = shiftRight.multiply(this.b);
                }
                bigInteger = shiftRight.add(subtract);
            }
            while (bigInteger.compareTo(this.a) >= 0) {
                bigInteger = bigInteger.subtract(this.a);
            }
            if (obj == null || bigInteger.signum() == 0) {
                return bigInteger;
            }
            return this.a.subtract(bigInteger);
        }

        protected BigInteger c(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger subtract = bigInteger.subtract(bigInteger2);
            if (subtract.signum() < 0) {
                return subtract.add(this.a);
            }
            return subtract;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Fp)) {
                return false;
            }
            Fp fp = (Fp) obj;
            if (this.a.equals(fp.a) && this.h.equals(fp.h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.h.hashCode();
        }
    }

    public abstract BigInteger a();

    public abstract ECFieldElement a(ECFieldElement eCFieldElement);

    public abstract int b();

    public abstract ECFieldElement b(ECFieldElement eCFieldElement);

    public abstract ECFieldElement c();

    public abstract ECFieldElement c(ECFieldElement eCFieldElement);

    public abstract ECFieldElement d();

    public abstract ECFieldElement d(ECFieldElement eCFieldElement);

    public abstract ECFieldElement e();

    public abstract ECFieldElement f();

    public abstract ECFieldElement g();

    public int h() {
        return a().bitLength();
    }

    public boolean i() {
        return h() == 1;
    }

    public boolean j() {
        return a().signum() == 0;
    }

    public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return c(eCFieldElement).b(eCFieldElement2.c(eCFieldElement3));
    }

    public ECFieldElement b(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return c(eCFieldElement).a(eCFieldElement2.c(eCFieldElement3));
    }

    public ECFieldElement a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return e().a(eCFieldElement.c(eCFieldElement2));
    }

    public boolean k() {
        return a().testBit(0);
    }

    public String toString() {
        return a().toString(16);
    }

    public byte[] l() {
        return BigIntegers.a((b() + 7) / 8, a());
    }
}
