package okio;

import java.util.Arrays;

/* compiled from: Twttr */
final class SegmentedByteString extends ByteString {
    final transient byte[][] e;
    final transient int[] f;

    SegmentedByteString(f fVar, int i) {
        int i2 = 0;
        super(null);
        ae.a(fVar.b, 0, (long) i);
        y yVar = fVar.a;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (yVar.c == yVar.b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += yVar.c - yVar.b;
            i3++;
            yVar = yVar.f;
        }
        this.e = new byte[i3][];
        this.f = new int[(i3 * 2)];
        yVar = fVar.a;
        i3 = 0;
        while (i2 < i) {
            this.e[i3] = yVar.a;
            i2 += yVar.c - yVar.b;
            this.f[i3] = i2;
            this.f[this.e.length + i3] = yVar.b;
            yVar.d = true;
            i3++;
            yVar = yVar.f;
        }
    }

    public String a() {
        return h().a();
    }

    public String b() {
        return h().b();
    }

    public String d() {
        return h().d();
    }

    public ByteString e() {
        return h().e();
    }

    public ByteString c() {
        return h().c();
    }

    public byte a(int i) {
        ae.a((long) this.f[this.e.length - 1], (long) i, 1);
        int b = b(i);
        return this.e[b][(i - (b == 0 ? 0 : this.f[b - 1])) + this.f[this.e.length + b]];
    }

    private int b(int i) {
        int binarySearch = Arrays.binarySearch(this.f, 0, this.e.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ -1;
    }

    public int f() {
        return this.f[this.e.length - 1];
    }

    public byte[] g() {
        int i = 0;
        Object obj = new byte[this.f[this.e.length - 1]];
        int length = this.e.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f[length + i];
            int i4 = this.f[i];
            System.arraycopy(this.e[i], i3, obj, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return obj;
    }

    void a(f fVar) {
        int i = 0;
        int length = this.e.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f[length + i];
            int i4 = this.f[i];
            y yVar = new y(this.e[i], i3, (i3 + i4) - i2);
            if (fVar.a == null) {
                yVar.g = yVar;
                yVar.f = yVar;
                fVar.a = yVar;
            } else {
                fVar.a.g.a(yVar);
            }
            i++;
            i2 = i4;
        }
        fVar.b = ((long) i2) + fVar.b;
    }

    public boolean a(int i, ByteString byteString, int i2, int i3) {
        if (i > f() - i3) {
            return false;
        }
        int b = b(i);
        while (i3 > 0) {
            int i4 = b == 0 ? 0 : this.f[b - 1];
            int min = Math.min(i3, ((this.f[b] - i4) + i4) - i);
            if (!byteString.a(i2, this.e[b], (i - i4) + this.f[this.e.length + b], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b++;
        }
        return true;
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i > f() - i3 || i2 > bArr.length - i3) {
            return false;
        }
        int b = b(i);
        while (i3 > 0) {
            int i4 = b == 0 ? 0 : this.f[b - 1];
            int min = Math.min(i3, ((this.f[b] - i4) + i4) - i);
            if (!ae.a(this.e[b], (i - i4) + this.f[this.e.length + b], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b++;
        }
        return true;
    }

    private ByteString h() {
        return new ByteString(g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        boolean z = (obj instanceof ByteString) && ((ByteString) obj).f() == f() && a(0, (ByteString) obj, 0, f());
        return z;
    }

    public int hashCode() {
        int i = this.c;
        if (i == 0) {
            i = 1;
            int length = this.e.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.e[i2];
                int i4 = this.f[length + i2];
                int i5 = this.f[i2];
                i3 = (i5 - i3) + i4;
                int i6 = i4;
                i4 = i;
                for (i = i6; i < i3; i++) {
                    i4 = (i4 * 31) + bArr[i];
                }
                i2++;
                i3 = i5;
                i = i4;
            }
            this.c = i;
        }
        return i;
    }

    public String toString() {
        return h().toString();
    }

    private Object writeReplace() {
        return h();
    }
}
