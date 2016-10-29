package com.twitter.util.serialization;

import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import java.io.EOFException;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* compiled from: Twttr */
public class f extends p {
    private final ByteBuffer a;

    public f(byte[] bArr) {
        this.a = ByteBuffer.wrap(bArr);
    }

    public boolean a() {
        return true;
    }

    public int b() {
        return this.a.position();
    }

    public byte c() throws IOException {
        try {
            if (a((byte) 1) == 1) {
                return (byte) 0;
            }
            return this.a.get();
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    public boolean d() throws IOException {
        return a((byte) 6) == (byte) 1;
    }

    public int e() throws IOException {
        return b((byte) 2);
    }

    public long f() throws IOException {
        return d((byte) 3);
    }

    public float g() throws IOException {
        try {
            if (a((byte) 4) == 1) {
                return 0.0f;
            }
            return this.a.getFloat();
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    public double h() throws IOException {
        try {
            if (a((byte) 5) == 1) {
                return 0.0d;
            }
            return this.a.getDouble();
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    public String i() throws IOException {
        byte o = o();
        if (o == 7) {
            n();
            return null;
        }
        if (!(o == (byte) 8 || o == 13)) {
            a((byte) 8, o);
        }
        int b = b(o);
        if (b < 0) {
            throw new SerializationException("String length is negative: " + b + ".");
        } else if (b == 0) {
            return "";
        } else {
            return o == (byte) 8 ? a(b) : b(b);
        }
    }

    public byte[] j() throws IOException {
        byte o = o();
        if (o == 7) {
            n();
            return null;
        }
        if (o != (byte) 14) {
            a((byte) 14, o);
        }
        int b = b(o);
        if (b < 0) {
            throw new SerializationException("byte[] length is negative: " + b + ".");
        } else if (b == 0) {
            return new byte[0];
        } else {
            byte[] bArr = new byte[b];
            this.a.get(bArr);
            return bArr;
        }
    }

    public int k() throws IOException {
        int b;
        if (o() == (byte) 10) {
            b = b((byte) 10);
            i();
        } else {
            b = b((byte) 9);
        }
        if (b >= 0) {
            return b;
        }
        throw new SerializationException("Invalid version number found (" + b + "). Valid versions" + " must be greater than 0.");
    }

    public z<Integer, String> l() throws IOException {
        return z.a(Integer.valueOf(b((byte) 10)), (String) e.a(i()));
    }

    public void m() throws IOException {
        a((byte) 11);
    }

    public void n() throws IOException {
        a((byte) 7);
    }

    public byte o() {
        if (this.a.remaining() == 0) {
            return (byte) 12;
        }
        return e.a(this.a.get(this.a.position()));
    }

    private byte a(byte b) throws IOException {
        try {
            byte b2 = this.a.get();
            byte a = e.a(b2);
            if (a == b) {
                return e.b(b2);
            }
            this.a.position(this.a.position() - 1);
            return a(b, a);
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    private static byte a(byte b, byte b2) throws OptionalFieldException, SerializationException {
        if (b2 == 11) {
            throw new OptionalFieldException("Expected object field of type " + o.c(b) + "but found the end of the object.");
        }
        throw new SerializationException("Expected value of type " + o.c(b) + " but found " + o.c(b2) + ".");
    }

    private int b(byte b) throws IOException {
        return c(a(b));
    }

    private int c(byte b) throws IOException {
        if (b == 1) {
            return 0;
        }
        if (b == 2) {
            try {
                return this.a.get() & 255;
            } catch (BufferUnderflowException e) {
                throw new EOFException();
            }
        } else if (b == 3) {
            return this.a.getShort() & 65535;
        } else {
            return this.a.getInt();
        }
    }

    private long d(byte b) throws IOException {
        try {
            byte a = a(b);
            if (a == 5) {
                return this.a.getLong();
            }
            return ((long) c(a)) & 4294967295L;
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    private String a(int i) throws IOException {
        try {
            ByteBuffer byteBuffer = this.a;
            StringBuilder stringBuilder = new StringBuilder(i);
            int i2 = 0;
            while (i2 < i) {
                byte b = byteBuffer.get();
                if (b >= null) {
                    stringBuilder.append((char) b);
                } else if ((b >> 5) == -2) {
                    stringBuilder.append((char) (((b << 6) ^ byteBuffer.get()) ^ 3968));
                } else if ((b >> 4) == -2) {
                    stringBuilder.append((char) ((((b << 12) ^ (byteBuffer.get() << 6)) ^ byteBuffer.get()) ^ 8064));
                } else if ((b >> 3) == -2) {
                    int i3 = ((((b & 7) << 18) | ((byteBuffer.get() & 63) << 12)) | ((byteBuffer.get() & 63) << 6)) | (byteBuffer.get() & 63);
                    stringBuilder.append(g.a(i3));
                    stringBuilder.append(g.b(i3));
                    i2++;
                } else {
                    throw new SerializationException("Serialized string is malformed.");
                }
                i2++;
            }
            return stringBuilder.toString();
        } catch (BufferUnderflowException e) {
            throw new EOFException();
        }
    }

    private String b(int i) throws IOException {
        if (this.a.remaining() < i) {
            throw new EOFException();
        }
        int position = this.a.position();
        this.a.position(position + i);
        byte[] array = this.a.array();
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = (char) array[position + i2];
        }
        return new String(cArr);
    }
}
