package defpackage;

import cfb;
import cvi;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: cuw */
public final class cuw implements Closeable {
    private final File a;
    private final File b;
    private final File c;
    private final int d;
    private final long e;
    private final int f;
    private final LinkedHashMap<String, cva> g;
    private final ExecutorService h;
    private final Callable<Void> i;
    private long j;
    private DataOutputStream k;
    private int l;

    private cuw(File file, int i, int i2, long j) {
        this.g = new LinkedHashMap(0, 0.75f, true);
        this.h = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.i = new cux(this);
        this.a = file;
        this.d = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.f = i2;
        this.e = j;
    }

    public static cuw a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            cuw cuw = new cuw(file, i, i2, j);
            if (cuw.b.exists()) {
                try {
                    int d = cuw.d();
                    cuw.e();
                    cuw.k = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(cuw.b, true)));
                    cuw.l = d - cuw.g.size();
                    return cuw;
                } catch (IOException e) {
                    cfb.d("DiskLruCache", file + " is corrupt: " + e.getMessage() + ", removing");
                    cuw.c();
                }
            }
            if (file.mkdirs() || file.exists()) {
                cuw = new cuw(file, i, i2, j);
                cuw.f();
                return cuw;
            }
            throw new FileNotFoundException("directory not found " + file);
        }
    }

    private static boolean a(File file) throws IOException {
        return file.exists() && file.delete();
    }

    private int d() throws IOException {
        DataInput dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(this.b)));
        try {
            long readLong = dataInputStream.readLong();
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            int readInt = dataInputStream.readInt();
            int readInt2 = dataInputStream.readInt();
            byte readByte = dataInputStream.readByte();
            if (-9130401435085039094L == readLong && 2 == readUnsignedByte && this.d == readInt && this.f == readInt2 && readByte == 10) {
                readUnsignedByte = 0;
                while (true) {
                    try {
                        a(dataInputStream);
                        readUnsignedByte++;
                    } catch (EOFException e) {
                        cvi.a(dataInputStream);
                        return readUnsignedByte;
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + readLong + ", " + readUnsignedByte + ", " + readInt2 + ", " + readByte + "]");
        } catch (Throwable th) {
            cvi.a(dataInputStream);
        }
    }

    private void a(DataInput dataInput) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        String readUTF = dataInput.readUTF();
        if (readUnsignedByte == 3 && dataInput.readByte() == (byte) 10) {
            this.g.remove(readUTF);
            return;
        }
        cva cva;
        cva cva2 = (cva) this.g.get(readUTF);
        if (cva2 == null) {
            cva2 = new cva(this, readUTF, this.f);
            this.g.put(readUTF, cva2);
            cva = cva2;
        } else {
            cva = cva2;
        }
        if (readUnsignedByte == 1) {
            Object obj = new long[this.f];
            for (int i = 0; i < this.f; i++) {
                obj[i] = dataInput.readLong();
            }
            if (dataInput.readByte() != (byte) 10) {
                throw new IOException("unexpected journal entry: " + readUnsignedByte + " " + readUTF);
            }
            cva.c = true;
            cva.d = null;
            System.arraycopy(obj, 0, cva.b, 0, this.f);
        } else if (readUnsignedByte == 2 && dataInput.readByte() == (byte) 10) {
            cva.d = new cuy(this, cva);
        } else if (readUnsignedByte != 4 || dataInput.readByte() != (byte) 10) {
            throw new IOException("unexpected journal entry: " + readUnsignedByte + " " + readUTF);
        }
    }

    private void e() throws IOException {
        cuw.a(this.c);
        Iterator it = this.g.values().iterator();
        while (it.hasNext()) {
            cva cva = (cva) it.next();
            int i;
            if (cva.b() == null) {
                for (i = 0; i < this.f; i++) {
                    this.j += cva.b[i];
                }
            } else {
                cva.d = null;
                for (i = 0; i < this.f; i++) {
                    cuw.a(cva.a(i));
                    cuw.a(cva.b(i));
                }
                it.remove();
            }
        }
    }

    private synchronized void f() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        DataOutput dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(this.c)));
        try {
            dataOutputStream.writeLong(-9130401435085039094L);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeInt(this.d);
            dataOutputStream.writeInt(this.f);
            dataOutputStream.writeByte(10);
            for (cva cva : this.g.values()) {
                if (cva.b() != null) {
                    cuw.a(dataOutputStream, 2, cva.a);
                } else {
                    a(dataOutputStream, cva);
                }
            }
            dataOutputStream.close();
            cvi.a(this.c, this.b);
            this.k = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(this.b, true)));
            this.l = 0;
        } catch (Throwable th) {
            dataOutputStream.close();
        }
    }

    private static void a(DataOutput dataOutput, int i, String str) throws IOException {
        dataOutput.writeByte(i);
        dataOutput.writeUTF(str);
        dataOutput.writeByte(10);
    }

    private void a(DataOutput dataOutput, cva cva) throws IOException {
        dataOutput.writeByte(1);
        dataOutput.writeUTF(cva.a);
        for (long writeLong : cva.b) {
            dataOutput.writeLong(writeLong);
        }
        dataOutput.writeByte(10);
    }

    public synchronized boolean a(String str) throws IOException {
        boolean z;
        h();
        cuw.d(str);
        if (this.g.containsKey(str)) {
            this.l++;
            cuw.a(this.k, 4, str);
            if (g()) {
                this.h.submit(this.i);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized cuy b(String str) throws IOException {
        cuy cuy;
        cva cva;
        h();
        cuw.d(str);
        cva cva2 = (cva) this.g.get(str);
        if (cva2 == null) {
            cva2 = new cva(this, str, this.f);
            this.g.put(str, cva2);
            cva = cva2;
        } else if (cva2.b() != null) {
            cuy = null;
        } else {
            cva = cva2;
        }
        cuy = new cuy(this, cva);
        cva.d = cuy;
        cuw.a(this.k, 2, str);
        this.k.flush();
        return cuy;
    }

    public File a(String str, int i, boolean z) {
        return new File(this.a, str + "." + i + (z ? ".tmp" : ""));
    }

    private synchronized void a(cuy cuy, boolean z) throws IOException {
        int i = 0;
        synchronized (this) {
            cva cva = cuy.a;
            if (cva.b() != cuy) {
                throw new IllegalStateException();
            }
            if (z) {
                if (!cva.a()) {
                    int i2 = 0;
                    while (i2 < this.f) {
                        if (cva.b(i2).exists()) {
                            i2++;
                        } else {
                            cuy.c();
                            throw new IllegalStateException("edit didn't create file " + i2);
                        }
                    }
                }
            }
            while (i < this.f) {
                File b = cva.b(i);
                if (!z) {
                    cuw.a(b);
                } else if (b.exists()) {
                    File a = cva.a(i);
                    cvi.a(b, a);
                    long j = cva.b[i];
                    long length = a.length();
                    cva.b[i] = length;
                    this.j = (this.j - j) + length;
                }
                i++;
            }
            this.l++;
            cva.d = null;
            if ((cva.a() | z) != 0) {
                cva.c = true;
                a(this.k, cva);
            } else {
                this.g.remove(cva.a);
                cuw.a(this.k, 3, cva.a);
            }
            if (this.j > this.e || g()) {
                this.h.submit(this.i);
            }
        }
    }

    private boolean g() {
        return this.l >= 2000 && this.l >= this.g.size();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean c(java.lang.String r7) throws java.io.IOException {
        /*
        r6 = this;
        r1 = 0;
        monitor-enter(r6);
        r6.h();	 Catch:{ all -> 0x0058 }
        defpackage.cuw.d(r7);	 Catch:{ all -> 0x0058 }
        r0 = r6.g;	 Catch:{ all -> 0x0058 }
        r0 = r0.get(r7);	 Catch:{ all -> 0x0058 }
        r0 = (defpackage.cva) r0;	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r2 = r0.b();	 Catch:{ all -> 0x0058 }
        if (r2 == 0) goto L_0x001b;
    L_0x0018:
        r0 = r1;
    L_0x0019:
        monitor-exit(r6);
        return r0;
    L_0x001b:
        r2 = r6.f;	 Catch:{ all -> 0x0058 }
        if (r1 >= r2) goto L_0x0038;
    L_0x001f:
        r2 = r0.a(r1);	 Catch:{ all -> 0x0058 }
        cvi.c(r2);	 Catch:{ all -> 0x0058 }
        r2 = r6.j;	 Catch:{ all -> 0x0058 }
        r4 = r0.b;	 Catch:{ all -> 0x0058 }
        r4 = r4[r1];	 Catch:{ all -> 0x0058 }
        r2 = r2 - r4;
        r6.j = r2;	 Catch:{ all -> 0x0058 }
        r2 = r0.b;	 Catch:{ all -> 0x0058 }
        r4 = 0;
        r2[r1] = r4;	 Catch:{ all -> 0x0058 }
        r1 = r1 + 1;
        goto L_0x001b;
    L_0x0038:
        r0 = r6.l;	 Catch:{ all -> 0x0058 }
        r0 = r0 + 1;
        r6.l = r0;	 Catch:{ all -> 0x0058 }
        r0 = r6.k;	 Catch:{ all -> 0x0058 }
        r1 = 3;
        defpackage.cuw.a(r0, r1, r7);	 Catch:{ all -> 0x0058 }
        r0 = r6.g;	 Catch:{ all -> 0x0058 }
        r0.remove(r7);	 Catch:{ all -> 0x0058 }
        r0 = r6.g();	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x0056;
    L_0x004f:
        r0 = r6.h;	 Catch:{ all -> 0x0058 }
        r1 = r6.i;	 Catch:{ all -> 0x0058 }
        r0.submit(r1);	 Catch:{ all -> 0x0058 }
    L_0x0056:
        r0 = 1;
        goto L_0x0019;
    L_0x0058:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cuw.c(java.lang.String):boolean");
    }

    public boolean a() {
        return this.k == null;
    }

    private void h() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void b() throws IOException {
        h();
        i();
        this.k.flush();
    }

    public synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.g.values()).iterator();
            while (it.hasNext()) {
                cuy b = ((cva) it.next()).b();
                if (b != null) {
                    b.c();
                }
            }
            i();
            this.k.close();
            this.k = null;
        }
    }

    private void i() throws IOException {
        while (this.j > this.e) {
            c((String) ((Entry) this.g.entrySet().iterator().next()).getKey());
        }
    }

    public void c() throws IOException {
        close();
        cvi.a(this.a);
    }

    private static void d(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + str + "\"");
        }
    }
}
