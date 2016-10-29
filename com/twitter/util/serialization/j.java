package com.twitter.util.serialization;

import java.io.IOException;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class j extends q<j> {
    private final ObjectOutput a;
    private final boolean b;

    public /* synthetic */ q b(byte b) throws IOException {
        return a(b);
    }

    public /* synthetic */ q b(double d) throws IOException {
        return a(d);
    }

    public /* synthetic */ q b(float f) throws IOException {
        return a(f);
    }

    public /* synthetic */ q b(int i, String str) throws IOException {
        return a(i, str);
    }

    public /* synthetic */ q b(long j) throws IOException {
        return a(j);
    }

    public /* synthetic */ q b(String str) throws IOException {
        return a(str);
    }

    public /* synthetic */ q b(boolean z) throws IOException {
        return a(z);
    }

    public /* synthetic */ q b(byte[] bArr) throws IOException {
        return a(bArr);
    }

    public /* synthetic */ q d(int i) throws IOException {
        return b(i);
    }

    public /* synthetic */ q e(int i) throws IOException {
        return a(i);
    }

    public /* synthetic */ q f() throws IOException {
        return c();
    }

    public /* synthetic */ q g() throws IOException {
        return b();
    }

    public j(ObjectOutput objectOutput) {
        this(objectOutput, true);
    }

    public j(ObjectOutput objectOutput, boolean z) {
        this.a = objectOutput;
        this.b = z;
    }

    public j a(byte b) throws IOException {
        this.a.writeByte(b);
        return this;
    }

    public j a(boolean z) throws IOException {
        this.a.writeBoolean(z);
        return this;
    }

    public j a(int i) throws IOException {
        this.a.writeInt(i);
        return this;
    }

    public j a(long j) throws IOException {
        this.a.writeLong(j);
        return this;
    }

    public j a(float f) throws IOException {
        this.a.writeFloat(f);
        return this;
    }

    public j a(double d) throws IOException {
        this.a.writeDouble(d);
        return this;
    }

    public j a(String str) throws IOException {
        if (str == null) {
            a((byte) 0);
        } else {
            a((byte) 1);
            this.a.writeUTF(str);
        }
        return this;
    }

    public j a(byte[] bArr) throws IOException {
        if (bArr == null) {
            a((byte) 0);
        } else {
            a((byte) 1);
            a(bArr.length);
            this.a.write(bArr);
        }
        return this;
    }

    public j b() throws IOException {
        this.a.writeObject(null);
        return this;
    }

    public j b(int i) throws IOException {
        if (this.b) {
            a(i);
        }
        return this;
    }

    public j a(int i, String str) throws IOException {
        return b(i);
    }

    public j c() {
        return this;
    }
}
