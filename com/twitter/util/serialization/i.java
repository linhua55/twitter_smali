package com.twitter.util.serialization;

import java.io.IOException;
import java.io.ObjectInput;

/* compiled from: Twttr */
public class i extends p {
    private final ObjectInput a;
    private final boolean b;

    public i(ObjectInput objectInput) {
        this(objectInput, true);
    }

    public i(ObjectInput objectInput, boolean z) {
        this.a = objectInput;
        this.b = z;
    }

    public byte c() throws IOException {
        return this.a.readByte();
    }

    public boolean d() throws IOException {
        return this.a.readBoolean();
    }

    public int e() throws IOException {
        return this.a.readInt();
    }

    public long f() throws IOException {
        return this.a.readLong();
    }

    public float g() throws IOException {
        return this.a.readFloat();
    }

    public double h() throws IOException {
        return this.a.readDouble();
    }

    public String i() throws IOException {
        if (c() == null) {
            return null;
        }
        return this.a.readUTF();
    }

    public byte[] j() throws IOException {
        if (c() == null) {
            return null;
        }
        int e = e();
        byte[] bArr = new byte[e];
        int read = this.a.read(bArr);
        if (read == e) {
            return bArr;
        }
        throw new SerializationException("Expected byte[] of length " + e + " but only read " + read);
    }

    public void n() throws IOException {
        try {
            Object readObject = this.a.readObject();
            if (readObject != null) {
                throw new SerializationException("Expected null object but found " + readObject);
            }
        } catch (Throwable e) {
            throw new SerializationException("Expected null object but found unclassified object", e);
        }
    }

    public int k() throws IOException {
        if (this.b) {
            return this.a.readInt();
        }
        return 0;
    }
}
