package io.fabric.sdk.android.services.common;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Twttr */
public class y implements Closeable {
    private static final Logger b;
    int a;
    private final RandomAccessFile c;
    private int d;
    private aa e;
    private aa f;
    private final byte[] g;

    static {
        b = Logger.getLogger(y.class.getName());
    }

    public y(File file) throws IOException {
        this.g = new byte[16];
        if (!file.exists()) {
            a(file);
        }
        this.c = b(file);
        e();
    }

    private static void b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void a(byte[] bArr, int... iArr) {
        int i = 0;
        int length = iArr.length;
        int i2 = 0;
        while (i < length) {
            b(bArr, i2, iArr[i]);
            i2 += 4;
            i++;
        }
    }

    private static int a(byte[] bArr, int i) {
        return ((((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16)) + ((bArr[i + 2] & 255) << 8)) + (bArr[i + 3] & 255);
    }

    private void e() throws IOException {
        this.c.seek(0);
        this.c.readFully(this.g);
        this.a = a(this.g, 0);
        if (((long) this.a) > this.c.length()) {
            throw new IOException("File is truncated. Expected length: " + this.a + ", Actual length: " + this.c.length());
        }
        this.d = a(this.g, 4);
        int a = a(this.g, 8);
        int a2 = a(this.g, 12);
        this.e = a(a);
        this.f = a(a2);
    }

    private void a(int i, int i2, int i3, int i4) throws IOException {
        a(this.g, i, i2, i3, i4);
        this.c.seek(0);
        this.c.write(this.g);
    }

    private aa a(int i) throws IOException {
        if (i == 0) {
            return aa.a;
        }
        this.c.seek((long) i);
        return new aa(i, this.c.readInt());
    }

    private static void a(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile b = b(file2);
        try {
            b.setLength(4096);
            b.seek(0);
            byte[] bArr = new byte[16];
            a(bArr, 4096, 0, 0, 0);
            b.write(bArr);
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } finally {
            b.close();
        }
    }

    private static RandomAccessFile b(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private int b(int i) {
        return i < this.a ? i : (i + 16) - this.a;
    }

    private void a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b = b(i);
        if (b + i3 <= this.a) {
            this.c.seek((long) b);
            this.c.write(bArr, i2, i3);
            return;
        }
        int i4 = this.a - b;
        this.c.seek((long) b);
        this.c.write(bArr, i2, i4);
        this.c.seek(16);
        this.c.write(bArr, i2 + i4, i3 - i4);
    }

    private void b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b = b(i);
        if (b + i3 <= this.a) {
            this.c.seek((long) b);
            this.c.readFully(bArr, i2, i3);
            return;
        }
        int i4 = this.a - b;
        this.c.seek((long) b);
        this.c.readFully(bArr, i2, i4);
        this.c.seek(16);
        this.c.readFully(bArr, i2 + i4, i3 - i4);
    }

    public void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    public synchronized void a(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int i3;
        c(i2);
        boolean b = b();
        if (b) {
            i3 = 16;
        } else {
            i3 = b((this.f.b + 4) + this.f.c);
        }
        aa aaVar = new aa(i3, i2);
        b(this.g, 0, i2);
        a(aaVar.b, this.g, 0, 4);
        a(aaVar.b + 4, bArr, i, i2);
        a(this.a, this.d + 1, b ? aaVar.b : this.e.b, aaVar.b);
        this.f = aaVar;
        this.d++;
        if (b) {
            this.e = this.f;
        }
    }

    public int a() {
        if (this.d == 0) {
            return 16;
        }
        if (this.f.b >= this.e.b) {
            return (((this.f.b - this.e.b) + 4) + this.f.c) + 16;
        }
        return (((this.f.b + 4) + this.f.c) + this.a) - this.e.b;
    }

    private int f() {
        return this.a - a();
    }

    public synchronized boolean b() {
        return this.d == 0;
    }

    private void c(int i) throws IOException {
        int i2 = i + 4;
        int f = f();
        if (f < i2) {
            int i3 = this.a;
            do {
                f += i3;
                i3 <<= 1;
            } while (f < i2);
            d(i3);
            i2 = b((this.f.b + 4) + this.f.c);
            if (i2 < this.e.b) {
                FileChannel channel = this.c.getChannel();
                channel.position((long) this.a);
                int i4 = i2 - 4;
                if (channel.transferTo(16, (long) i4, channel) != ((long) i4)) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.f.b < this.e.b) {
                f = (this.a + this.f.b) - 16;
                a(i3, this.d, this.e.b, f);
                this.f = new aa(f, this.f.c);
            } else {
                a(i3, this.d, this.e.b, this.f.b);
            }
            this.a = i3;
        }
    }

    private void d(int i) throws IOException {
        this.c.setLength((long) i);
        this.c.getChannel().force(true);
    }

    public synchronized void a(ac acVar) throws IOException {
        int i = this.e.b;
        for (int i2 = 0; i2 < this.d; i2++) {
            aa a = a(i);
            acVar.a(new ab(a, null), a.c);
            i = b(a.c + (a.b + 4));
        }
    }

    private static <T> T b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public synchronized void c() throws IOException {
        if (b()) {
            throw new NoSuchElementException();
        } else if (this.d == 1) {
            d();
        } else {
            int b = b((this.e.b + 4) + this.e.c);
            b(b, this.g, 0, 4);
            int a = a(this.g, 0);
            a(this.a, this.d - 1, b, this.f.b);
            this.d--;
            this.e = new aa(b, a);
        }
    }

    public synchronized void d() throws IOException {
        a(4096, 0, 0, 0);
        this.d = 0;
        this.e = aa.a;
        this.f = aa.a;
        if (this.a > 4096) {
            d(4096);
        }
        this.a = 4096;
    }

    public synchronized void close() throws IOException {
        this.c.close();
    }

    public boolean a(int i, int i2) {
        return (a() + 4) + i <= i2;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append('[');
        stringBuilder.append("fileLength=").append(this.a);
        stringBuilder.append(", size=").append(this.d);
        stringBuilder.append(", first=").append(this.e);
        stringBuilder.append(", last=").append(this.f);
        stringBuilder.append(", element lengths=[");
        try {
            a(new z(this, stringBuilder));
        } catch (Throwable e) {
            b.log(Level.WARNING, "read error", e);
        }
        stringBuilder.append("]]");
        return stringBuilder.toString();
    }
}
