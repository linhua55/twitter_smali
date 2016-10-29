package tv.periscope.android.video.rtmp;

/* compiled from: Twttr */
public class i {
    public byte[] a;
    public int b;
    h c;

    public i() {
        this.a = null;
        this.b = 0;
    }

    public i(byte[] bArr) {
        this.a = null;
        this.b = 0;
        this.a = bArr;
        this.b = bArr.length;
    }

    public void a(int i) {
        if (this.a == null || this.a.length < i) {
            int i2 = 4196;
            if (i <= 2048) {
                i2 = 32;
            }
            Object obj = new byte[(i2 * (((i + i2) - 1) / i2))];
            if (this.b > 0) {
                System.arraycopy(this.a, 0, obj, 0, this.b);
            }
            this.a = obj;
        }
    }

    public void a(byte[] bArr, int i) {
        a(bArr, 0, i);
    }

    public void a(byte[] bArr, int i, int i2) {
        a(this.b + i2);
        System.arraycopy(bArr, i, this.a, this.b, i2);
        this.b += i2;
    }

    public synchronized void a(h hVar) {
        this.c = hVar;
    }

    public synchronized h a() {
        return this.c;
    }
}
