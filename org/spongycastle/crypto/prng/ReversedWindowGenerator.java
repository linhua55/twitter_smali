package org.spongycastle.crypto.prng;

/* compiled from: Twttr */
public class ReversedWindowGenerator implements RandomGenerator {
    private final RandomGenerator a;
    private byte[] b;
    private int c;

    public void b(byte[] bArr) {
        b(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i, int i2) {
        b(bArr, i, i2);
    }

    private void b(byte[] bArr, int i, int i2) {
        int i3 = 0;
        synchronized (this) {
            while (i3 < i2) {
                if (this.c < 1) {
                    this.a.a(this.b, 0, this.b.length);
                    this.c = this.b.length;
                }
                int i4 = i3 + 1;
                i3 += i;
                byte[] bArr2 = this.b;
                int i5 = this.c - 1;
                this.c = i5;
                bArr[i3] = bArr2[i5];
                i3 = i4;
            }
        }
    }
}
