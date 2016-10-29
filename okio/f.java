package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: Twttr */
public final class f implements Cloneable, i, j {
    private static final byte[] c;
    y a;
    long b;

    public /* synthetic */ i b(String str) throws IOException {
        return a(str);
    }

    public /* synthetic */ i b(ByteString byteString) throws IOException {
        return a(byteString);
    }

    public /* synthetic */ i c(byte[] bArr) throws IOException {
        return b(bArr);
    }

    public /* synthetic */ i c(byte[] bArr, int i, int i2) throws IOException {
        return b(bArr, i, i2);
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return v();
    }

    public /* synthetic */ i g(int i) throws IOException {
        return d(i);
    }

    public /* synthetic */ i h(int i) throws IOException {
        return c(i);
    }

    public /* synthetic */ i i(int i) throws IOException {
        return b(i);
    }

    public /* synthetic */ i k(long j) throws IOException {
        return j(j);
    }

    public /* synthetic */ i l(long j) throws IOException {
        return i(j);
    }

    public /* synthetic */ i m(long j) throws IOException {
        return h(j);
    }

    public /* synthetic */ i x() throws IOException {
        return d();
    }

    static {
        c = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
    }

    public long a() {
        return this.b;
    }

    public f b() {
        return this;
    }

    public OutputStream c() {
        return new g(this);
    }

    public f d() {
        return this;
    }

    public i e() {
        return this;
    }

    public boolean f() {
        return this.b == 0;
    }

    public void a(long j) throws EOFException {
        if (this.b < j) {
            throw new EOFException();
        }
    }

    public InputStream g() {
        return new h(this);
    }

    public f a(f fVar, long j, long j2) {
        if (fVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        ae.a(this.b, j, j2);
        if (j2 != 0) {
            fVar.b += j2;
            y yVar = this.a;
            while (j >= ((long) (yVar.c - yVar.b))) {
                j -= (long) (yVar.c - yVar.b);
                yVar = yVar.f;
            }
            while (j2 > 0) {
                y yVar2 = new y(yVar);
                yVar2.b = (int) (((long) yVar2.b) + j);
                yVar2.c = Math.min(yVar2.b + ((int) j2), yVar2.c);
                if (fVar.a == null) {
                    yVar2.g = yVar2;
                    yVar2.f = yVar2;
                    fVar.a = yVar2;
                } else {
                    fVar.a.g.a(yVar2);
                }
                j2 -= (long) (yVar2.c - yVar2.b);
                yVar = yVar.f;
                j = 0;
            }
        }
        return this;
    }

    public long h() {
        long j = this.b;
        if (j == 0) {
            return 0;
        }
        y yVar = this.a.g;
        if (yVar.c >= 2048 || !yVar.e) {
            return j;
        }
        return j - ((long) (yVar.c - yVar.b));
    }

    public byte i() {
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        y yVar = this.a;
        int i = yVar.b;
        int i2 = yVar.c;
        int i3 = i + 1;
        byte b = yVar.a[i];
        this.b--;
        if (i3 == i2) {
            this.a = yVar.a();
            z.a(yVar);
        } else {
            yVar.b = i3;
        }
        return b;
    }

    public byte b(long j) {
        ae.a(this.b, j, 1);
        y yVar = this.a;
        while (true) {
            int i = yVar.c - yVar.b;
            if (j < ((long) i)) {
                return yVar.a[yVar.b + ((int) j)];
            }
            j -= (long) i;
            yVar = yVar.f;
        }
    }

    public short j() {
        if (this.b < 2) {
            throw new IllegalStateException("size < 2: " + this.b);
        }
        y yVar = this.a;
        int i = yVar.b;
        int i2 = yVar.c;
        if (i2 - i < 2) {
            return (short) (((i() & 255) << 8) | (i() & 255));
        }
        byte[] bArr = yVar.a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.b -= 2;
        if (i4 == i2) {
            this.a = yVar.a();
            z.a(yVar);
        } else {
            yVar.b = i4;
        }
        return (short) i;
    }

    public int k() {
        if (this.b < 4) {
            throw new IllegalStateException("size < 4: " + this.b);
        }
        y yVar = this.a;
        int i = yVar.b;
        int i2 = yVar.c;
        if (i2 - i < 4) {
            return ((((i() & 255) << 24) | ((i() & 255) << 16)) | ((i() & 255) << 8)) | (i() & 255);
        }
        byte[] bArr = yVar.a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        i3 = i4 + 1;
        i |= (bArr[i4] & 255) << 8;
        i4 = i3 + 1;
        i |= bArr[i3] & 255;
        this.b -= 4;
        if (i4 == i2) {
            this.a = yVar.a();
            z.a(yVar);
            return i;
        }
        yVar.b = i4;
        return i;
    }

    public long l() {
        if (this.b < 8) {
            throw new IllegalStateException("size < 8: " + this.b);
        }
        y yVar = this.a;
        int i = yVar.b;
        int i2 = yVar.c;
        if (i2 - i < 8) {
            return ((((long) k()) & 4294967295L) << 32) | (((long) k()) & 4294967295L);
        }
        byte[] bArr = yVar.a;
        int i3 = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        i = i3 + 1;
        long j2 = ((((long) bArr[i3]) & 255) << 48) | j;
        int i4 = i + 1;
        i = i4 + 1;
        j2 = (j2 | ((((long) bArr[i]) & 255) << 40)) | ((((long) bArr[i4]) & 255) << 32);
        i4 = i + 1;
        i = i4 + 1;
        j2 = (j2 | ((((long) bArr[i]) & 255) << 24)) | ((((long) bArr[i4]) & 255) << 16);
        i4 = i + 1;
        int i5 = i4 + 1;
        long j3 = (((long) bArr[i4]) & 255) | (j2 | ((((long) bArr[i]) & 255) << 8));
        this.b -= 8;
        if (i5 == i2) {
            this.a = yVar.a();
            z.a(yVar);
            return j3;
        }
        yVar.b = i5;
        return j3;
    }

    public short m() {
        return ae.a(j());
    }

    public int n() {
        return ae.a(k());
    }

    public long o() {
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        long j = 0;
        int i = 0;
        Object obj = null;
        Object obj2 = null;
        long j2 = -7;
        do {
            y yVar = this.a;
            byte[] bArr = yVar.a;
            int i2 = yVar.b;
            int i3 = yVar.c;
            while (i2 < i3) {
                int i4 = bArr[i2];
                if (i4 >= 48 && i4 <= 57) {
                    int i5 = 48 - i4;
                    if (j >= -922337203685477580L) {
                        if (j == -922337203685477580L) {
                            if (((long) i5) < j2) {
                            }
                        }
                        j = (j * 10) + ((long) i5);
                    }
                    f b = new f().i(j).b(i4);
                    if (obj == null) {
                        b.i();
                    }
                    throw new NumberFormatException("Number too large: " + b.r());
                } else if (i4 != 45 || i != 0) {
                    if (i != 0) {
                        obj2 = 1;
                        if (i2 != i3) {
                            this.a = yVar.a();
                            z.a(yVar);
                        } else {
                            yVar.b = i2;
                        }
                        if (obj2 == null) {
                            break;
                        }
                    } else {
                        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(i4));
                    }
                } else {
                    obj = 1;
                    j2--;
                }
                i2++;
                i++;
            }
            if (i2 != i3) {
                yVar.b = i2;
            } else {
                this.a = yVar.a();
                z.a(yVar);
            }
            if (obj2 == null) {
                break;
            }
        } while (this.a != null);
        this.b -= (long) i;
        if (obj != null) {
            return j;
        }
        return -j;
    }

    public long p() {
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        long j = 0;
        int i = 0;
        Object obj = null;
        do {
            y yVar = this.a;
            byte[] bArr = yVar.a;
            int i2 = yVar.b;
            int i3 = yVar.c;
            int i4 = i2;
            while (i4 < i3) {
                int i5 = bArr[i4];
                if (i5 >= 48 && i5 <= 57) {
                    i2 = i5 - 48;
                } else if (i5 >= 97 && i5 <= 102) {
                    i2 = (i5 - 97) + 10;
                } else if (i5 < 65 || i5 > 70) {
                    if (i != 0) {
                        obj = 1;
                        if (i4 != i3) {
                            this.a = yVar.a();
                            z.a(yVar);
                        } else {
                            yVar.b = i4;
                        }
                        if (obj == null) {
                            break;
                        }
                    } else {
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i5));
                    }
                } else {
                    i2 = (i5 - 65) + 10;
                }
                if ((-1152921504606846976L & j) != 0) {
                    throw new NumberFormatException("Number too large: " + new f().j(j).b(i5).r());
                }
                i++;
                i4++;
                j = ((long) i2) | (j << 4);
            }
            if (i4 != i3) {
                yVar.b = i4;
            } else {
                this.a = yVar.a();
                z.a(yVar);
            }
            if (obj == null) {
                break;
            }
        } while (this.a != null);
        this.b -= (long) i;
        return j;
    }

    public ByteString q() {
        return new ByteString(t());
    }

    public ByteString c(long j) throws EOFException {
        return new ByteString(f(j));
    }

    public void a(f fVar, long j) throws EOFException {
        if (this.b < j) {
            fVar.write(this, this.b);
            throw new EOFException();
        } else {
            fVar.write(this, j);
        }
    }

    public String r() {
        try {
            return a(this.b, ae.a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String d(long j) throws EOFException {
        return a(j, ae.a);
    }

    public String a(long j, Charset charset) throws EOFException {
        ae.a(this.b, 0, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            y yVar = this.a;
            if (((long) yVar.b) + j > ((long) yVar.c)) {
                return new String(f(j), charset);
            }
            String str = new String(yVar.a, yVar.b, (int) j, charset);
            yVar.b = (int) (((long) yVar.b) + j);
            this.b -= j;
            if (yVar.b != yVar.c) {
                return str;
            }
            this.a = yVar.a();
            z.a(yVar);
            return str;
        }
    }

    public String s() throws EOFException {
        long a = a((byte) 10);
        if (a != -1) {
            return e(a);
        }
        f fVar = new f();
        a(fVar, 0, Math.min(32, this.b));
        throw new EOFException("\\n not found: size=" + a() + " content=" + fVar.q().d() + "...");
    }

    String e(long j) throws EOFException {
        if (j <= 0 || b(j - 1) != 13) {
            String d = d(j);
            g(1);
            return d;
        }
        d = d(j - 1);
        g(2);
        return d;
    }

    public byte[] t() {
        try {
            return f(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public byte[] f(long j) throws EOFException {
        ae.a(this.b, 0, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[((int) j)];
        a(bArr);
        return bArr;
    }

    public void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int a = a(bArr, i, bArr.length - i);
            if (a == -1) {
                throw new EOFException();
            }
            i += a;
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        ae.a((long) bArr.length, (long) i, (long) i2);
        y yVar = this.a;
        if (yVar == null) {
            return -1;
        }
        int min = Math.min(i2, yVar.c - yVar.b);
        System.arraycopy(yVar.a, yVar.b, bArr, i, min);
        yVar.b += min;
        this.b -= (long) min;
        if (yVar.b != yVar.c) {
            return min;
        }
        this.a = yVar.a();
        z.a(yVar);
        return min;
    }

    public void u() {
        try {
            g(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public void g(long j) throws EOFException {
        while (j > 0) {
            if (this.a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, (long) (this.a.c - this.a.b));
            this.b -= (long) min;
            j -= (long) min;
            y yVar = this.a;
            yVar.b = min + yVar.b;
            if (this.a.b == this.a.c) {
                y yVar2 = this.a;
                this.a = yVar2.a();
                z.a(yVar2);
            }
        }
    }

    public f a(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.a(this);
        return this;
    }

    public f a(String str) {
        return a(str, 0, str.length());
    }

    public f a(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else {
            while (i < i2) {
                int i3;
                char charAt = str.charAt(i);
                if (charAt < '\u0080') {
                    int i4;
                    y e = e(1);
                    byte[] bArr = e.a;
                    int i5 = e.c - i;
                    int min = Math.min(i2, 2048 - i5);
                    i3 = i + 1;
                    bArr[i5 + i] = (byte) charAt;
                    while (i3 < min) {
                        char charAt2 = str.charAt(i3);
                        if (charAt2 >= '\u0080') {
                            break;
                        }
                        i4 = i3 + 1;
                        bArr[i3 + i5] = (byte) charAt2;
                        i3 = i4;
                    }
                    i4 = (i3 + i5) - e.c;
                    e.c += i4;
                    this.b += (long) i4;
                } else if (charAt < '\u0800') {
                    b((charAt >> 6) | 192);
                    b((charAt & 63) | 128);
                    i3 = i + 1;
                } else if (charAt < '\ud800' || charAt > '\udfff') {
                    b((charAt >> 12) | 224);
                    b(((charAt >> 6) & 63) | 128);
                    b((charAt & 63) | 128);
                    i3 = i + 1;
                } else {
                    i3 = i + 1 < i2 ? str.charAt(i + 1) : 0;
                    if (charAt > '\udbff' || i3 < 56320 || i3 > 57343) {
                        b(63);
                        i++;
                    } else {
                        i3 = ((i3 & -56321) | ((charAt & -55297) << 10)) + 65536;
                        b((i3 >> 18) | 240);
                        b(((i3 >> 12) & 63) | 128);
                        b(((i3 >> 6) & 63) | 128);
                        b((i3 & 63) | 128);
                        i3 = i + 2;
                    }
                }
                i = i3;
            }
            return this;
        }
    }

    public f a(int i) {
        if (i < 128) {
            b(i);
        } else if (i < 2048) {
            b((i >> 6) | 192);
            b((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                b((i >> 12) | 224);
                b(((i >> 6) & 63) | 128);
                b((i & 63) | 128);
            } else {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
            }
        } else if (i <= 1114111) {
            b((i >> 18) | 240);
            b(((i >> 12) & 63) | 128);
            b(((i >> 6) & 63) | 128);
            b((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public f a(String str, Charset charset) {
        return a(str, 0, str.length(), charset);
    }

    public f a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(ae.a)) {
            return a(str);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return b(bytes, 0, bytes.length);
        }
    }

    public f b(byte[] bArr) {
        if (bArr != null) {
            return b(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    public f b(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        ae.a((long) bArr.length, (long) i, (long) i2);
        int i3 = i + i2;
        while (i < i3) {
            y e = e(1);
            int min = Math.min(i3 - i, 2048 - e.c);
            System.arraycopy(bArr, i, e.a, e.c, min);
            i += min;
            e.c = min + e.c;
        }
        this.b += (long) i2;
        return this;
    }

    public long a(ab abVar) throws IOException {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = abVar.read(this, 2048);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    public f b(int i) {
        y e = e(1);
        byte[] bArr = e.a;
        int i2 = e.c;
        e.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    public f c(int i) {
        y e = e(2);
        byte[] bArr = e.a;
        int i2 = e.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & 255);
        e.c = i2;
        this.b += 2;
        return this;
    }

    public f d(int i) {
        y e = e(4);
        byte[] bArr = e.a;
        int i2 = e.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & 255);
        e.c = i2;
        this.b += 4;
        return this;
    }

    public f h(long j) {
        y e = e(8);
        byte[] bArr = e.a;
        int i = e.c;
        int i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 56) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 48) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 40) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 32) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 24) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 16) & 255));
        i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 8) & 255));
        i = i2 + 1;
        bArr[i2] = (byte) ((int) (j & 255));
        e.c = i;
        this.b += 8;
        return this;
    }

    public f i(long j) {
        if (j == 0) {
            return b(48);
        }
        long j2;
        Object obj;
        if (j < 0) {
            j2 = -j;
            if (j2 < 0) {
                return a("-9223372036854775808");
            }
            obj = 1;
        } else {
            obj = null;
            j2 = j;
        }
        int i = j2 < 100000000 ? j2 < 10000 ? j2 < 100 ? j2 < 10 ? 1 : 2 : j2 < 1000 ? 3 : 4 : j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8 : j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        if (obj != null) {
            i++;
        }
        y e = e(i);
        byte[] bArr = e.a;
        int i2 = e.c + i;
        while (j2 != 0) {
            i2--;
            bArr[i2] = c[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (obj != null) {
            bArr[i2 - 1] = (byte) 45;
        }
        e.c += i;
        this.b = ((long) i) + this.b;
        return this;
    }

    public f j(long j) {
        if (j == 0) {
            return b(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        y e = e(numberOfTrailingZeros);
        byte[] bArr = e.a;
        int i = e.c;
        for (int i2 = (e.c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        e.c += numberOfTrailingZeros;
        this.b = ((long) numberOfTrailingZeros) + this.b;
        return this;
    }

    y e(int i) {
        if (i < 1 || i > 2048) {
            throw new IllegalArgumentException();
        } else if (this.a == null) {
            this.a = z.a();
            y yVar = this.a;
            y yVar2 = this.a;
            r0 = this.a;
            yVar2.g = r0;
            yVar.f = r0;
            return r0;
        } else {
            r0 = this.a.g;
            if (r0.c + i > 2048 || !r0.e) {
                return r0.a(z.a());
            }
            return r0;
        }
    }

    public void write(f fVar, long j) {
        if (fVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (fVar == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            ae.a(fVar.b, 0, j);
            while (j > 0) {
                y yVar;
                if (j < ((long) (fVar.a.c - fVar.a.b))) {
                    yVar = this.a != null ? this.a.g : null;
                    if (yVar != null && yVar.e) {
                        if ((((long) yVar.c) + j) - ((long) (yVar.d ? 0 : yVar.b)) <= 2048) {
                            fVar.a.a(yVar, (int) j);
                            fVar.b -= j;
                            this.b += j;
                            return;
                        }
                    }
                    fVar.a = fVar.a.a((int) j);
                }
                y yVar2 = fVar.a;
                long j2 = (long) (yVar2.c - yVar2.b);
                fVar.a = yVar2.a();
                if (this.a == null) {
                    this.a = yVar2;
                    yVar2 = this.a;
                    yVar = this.a;
                    y yVar3 = this.a;
                    yVar.g = yVar3;
                    yVar2.f = yVar3;
                } else {
                    this.a.g.a(yVar2).b();
                }
                fVar.b -= j2;
                this.b += j2;
                j -= j2;
            }
        }
    }

    public long read(f fVar, long j) {
        if (fVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.b == 0) {
            return -1;
        } else {
            if (j > this.b) {
                j = this.b;
            }
            fVar.write(this, j);
            return j;
        }
    }

    public long a(byte b) {
        return a(b, 0);
    }

    public long a(byte b, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        y yVar = this.a;
        if (yVar == null) {
            return -1;
        }
        y yVar2 = yVar;
        long j2 = 0;
        do {
            int i = yVar2.c - yVar2.b;
            if (j >= ((long) i)) {
                j -= (long) i;
            } else {
                byte[] bArr = yVar2.a;
                int i2 = yVar2.c;
                for (int i3 = (int) (((long) yVar2.b) + j); i3 < i2; i3++) {
                    if (bArr[i3] == b) {
                        return (j2 + ((long) i3)) - ((long) yVar2.b);
                    }
                }
                j = 0;
            }
            j2 += (long) i;
            yVar2 = yVar2.f;
        } while (yVar2 != this.a);
        return -1;
    }

    public void flush() {
    }

    public void close() {
    }

    public ac timeout() {
        return ac.NONE;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.b != fVar.b) {
            return false;
        }
        if (this.b == 0) {
            return true;
        }
        y yVar = this.a;
        y yVar2 = fVar.a;
        int i = yVar.b;
        int i2 = yVar2.b;
        while (j < this.b) {
            long min = (long) Math.min(yVar.c - i, yVar2.c - i2);
            int i3 = 0;
            while (((long) i3) < min) {
                int i4 = i + 1;
                byte b = yVar.a[i];
                i = i2 + 1;
                if (b != yVar2.a[i2]) {
                    return false;
                }
                i3++;
                i2 = i;
                i = i4;
            }
            if (i == yVar.c) {
                yVar = yVar.f;
                i = yVar.b;
            }
            if (i2 == yVar2.c) {
                yVar2 = yVar2.f;
                i2 = yVar2.b;
            }
            j += min;
        }
        return true;
    }

    public int hashCode() {
        y yVar = this.a;
        if (yVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = yVar.b;
            while (i2 < yVar.c) {
                int i3 = yVar.a[i2] + (i * 31);
                i2++;
                i = i3;
            }
            yVar = yVar.f;
        } while (yVar != this.a);
        return i;
    }

    public String toString() {
        if (this.b == 0) {
            return "Buffer[size=0]";
        }
        if (this.b <= 16) {
            ByteString q = v().q();
            return String.format("Buffer[size=%s data=%s]", new Object[]{Long.valueOf(this.b), q.d()});
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(this.a.a, this.a.b, this.a.c - this.a.b);
            for (y yVar = this.a.f; yVar != this.a; yVar = yVar.f) {
                instance.update(yVar.a, yVar.b, yVar.c - yVar.b);
            }
            return String.format("Buffer[size=%s md5=%s]", new Object[]{Long.valueOf(this.b), ByteString.a(instance.digest()).d()});
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    public f v() {
        f fVar = new f();
        if (this.b == 0) {
            return fVar;
        }
        fVar.a = new y(this.a);
        y yVar = fVar.a;
        y yVar2 = fVar.a;
        y yVar3 = fVar.a;
        yVar2.g = yVar3;
        yVar.f = yVar3;
        for (yVar = this.a.f; yVar != this.a; yVar = yVar.f) {
            fVar.a.g.a(new y(yVar));
        }
        fVar.b = this.b;
        return fVar;
    }

    public ByteString w() {
        if (this.b <= 2147483647L) {
            return f((int) this.b);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
    }

    public ByteString f(int i) {
        if (i == 0) {
            return ByteString.b;
        }
        return new SegmentedByteString(this, i);
    }
}
