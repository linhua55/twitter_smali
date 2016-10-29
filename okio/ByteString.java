package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* compiled from: Twttr */
public class ByteString implements Serializable, Comparable<ByteString> {
    static final char[] a;
    public static final ByteString b;
    private static final long serialVersionUID = 1;
    transient int c;
    transient String d;
    final byte[] data;

    public /* synthetic */ int compareTo(Object obj) {
        return a((ByteString) obj);
    }

    static {
        a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        b = a(new byte[0]);
    }

    ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static ByteString a(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        ByteString byteString = new ByteString(str.getBytes(ae.a));
        byteString.d = str;
        return byteString;
    }

    public String a() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        str = new String(this.data, ae.a);
        this.d = str;
        return str;
    }

    public String b() {
        return e.a(this.data);
    }

    public ByteString c() {
        return c("MD5");
    }

    private ByteString c(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static ByteString b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] a = e.a(str);
        return a != null ? new ByteString(a) : null;
    }

    public String d() {
        int i = 0;
        char[] cArr = new char[(this.data.length * 2)];
        byte[] bArr = this.data;
        int length = bArr.length;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i2 + 1;
            cArr[i2] = a[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = a[b & 15];
            i++;
        }
        return new String(cArr);
    }

    public static ByteString a(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i);
        } else {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i2 += read;
            }
            return new ByteString(bArr);
        }
    }

    public ByteString e() {
        int i = 0;
        while (i < this.data.length) {
            byte b = this.data[i];
            if (b < (byte) 65 || b > (byte) 90) {
                i++;
            } else {
                byte[] bArr = (byte[]) this.data.clone();
                int i2 = i + 1;
                bArr[i] = (byte) (b + 32);
                for (i = i2; i < bArr.length; i++) {
                    byte b2 = bArr[i];
                    if (b2 >= (byte) 65 && b2 <= (byte) 90) {
                        bArr[i] = (byte) (b2 + 32);
                    }
                }
                return new ByteString(bArr);
            }
        }
        return this;
    }

    public byte a(int i) {
        return this.data[i];
    }

    public int f() {
        return this.data.length;
    }

    public byte[] g() {
        return (byte[]) this.data.clone();
    }

    void a(f fVar) {
        fVar.b(this.data, 0, this.data.length);
    }

    public boolean a(int i, ByteString byteString, int i2, int i3) {
        return byteString.a(i2, this.data, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        return i <= this.data.length - i3 && i2 <= bArr.length - i3 && ae.a(this.data, i, bArr, i2, i3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        boolean z = (obj instanceof ByteString) && ((ByteString) obj).f() == this.data.length && ((ByteString) obj).a(0, this.data, 0, this.data.length);
        return z;
    }

    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        i = Arrays.hashCode(this.data);
        this.c = i;
        return i;
    }

    public int a(ByteString byteString) {
        int f = f();
        int f2 = byteString.f();
        int min = Math.min(f, f2);
        int i = 0;
        while (i < min) {
            int a = a(i) & 255;
            int a2 = byteString.a(i) & 255;
            if (a == a2) {
                i++;
            } else if (a < a2) {
                return -1;
            } else {
                return 1;
            }
        }
        if (f == f2) {
            return 0;
        }
        if (f >= f2) {
            return 1;
        }
        return -1;
    }

    public String toString() {
        if (this.data.length == 0) {
            return "ByteString[size=0]";
        }
        if (this.data.length <= 16) {
            return String.format("ByteString[size=%s data=%s]", new Object[]{Integer.valueOf(this.data.length), d()});
        }
        return String.format("ByteString[size=%s md5=%s]", new Object[]{Integer.valueOf(this.data.length), c().d()});
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString a = a(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, a.data);
        } catch (NoSuchFieldException e) {
            throw new AssertionError();
        } catch (IllegalAccessException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }
}
