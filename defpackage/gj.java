package defpackage;

import android.util.Pair;
import bx;
import com.facebook.common.references.a;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imageformat.b;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.ac;
import gp;
import java.io.Closeable;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* compiled from: Twttr */
/* renamed from: gj */
public class gj implements Closeable {
    private final a<PooledByteBuffer> a;
    private ImageFormat b;
    private int c;
    private int d;
    private int e;
    private int f;

    public gj(a<PooledByteBuffer> aVar) {
        this.b = ImageFormat.j;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = 1;
        bx.a(a.a(aVar));
        this.a = aVar.b();
    }

    public static gj a(gj gjVar) {
        return gjVar != null ? gjVar.a() : null;
    }

    public gj a() {
        gj gjVar;
        a b = a.b(this.a);
        if (b == null) {
            gjVar = null;
        } else {
            try {
                gjVar = new gj(b);
            } catch (Throwable th) {
                a.c(b);
            }
        }
        a.c(b);
        if (gjVar != null) {
            gjVar.b(this);
        }
        return gjVar;
    }

    public void close() {
        a.c(this.a);
    }

    public synchronized boolean b() {
        return a.a(this.a);
    }

    public a<PooledByteBuffer> c() {
        return a.b(this.a);
    }

    public InputStream d() {
        a b = a.b(this.a);
        if (b == null) {
            return null;
        }
        try {
            InputStream acVar = new ac((PooledByteBuffer) b.a());
            return acVar;
        } finally {
            a.c(b);
        }
    }

    public void a(ImageFormat imageFormat) {
        this.b = imageFormat;
    }

    public void a(int i) {
        this.e = i;
    }

    public void b(int i) {
        this.d = i;
    }

    public void c(int i) {
        this.c = i;
    }

    public void d(int i) {
        this.f = i;
    }

    public ImageFormat e() {
        return this.b;
    }

    public int f() {
        return this.c;
    }

    public int g() {
        return this.d;
    }

    public int h() {
        return this.e;
    }

    public int i() {
        return this.f;
    }

    public boolean e(int i) {
        if (this.b != ImageFormat.f) {
            return true;
        }
        bx.a(this.a);
        PooledByteBuffer pooledByteBuffer = (PooledByteBuffer) this.a.a();
        boolean z = pooledByteBuffer.a(i + -2) == -1 && pooledByteBuffer.a(i - 1) == -39;
        return z;
    }

    public int j() {
        if (this.a == null || this.a.a() == null) {
            return -1;
        }
        return ((PooledByteBuffer) this.a.a()).a();
    }

    public void k() {
        ImageFormat b = b.b(d());
        this.b = b;
        if (!ImageFormat.a(b)) {
            Pair a = gp.a(d());
            if (a != null) {
                this.d = ((Integer) a.first).intValue();
                this.e = ((Integer) a.second).intValue();
                if (b != ImageFormat.f) {
                    this.c = 0;
                } else if (this.c == -1) {
                    this.c = gq.a(gq.a(d()));
                }
            }
        }
    }

    public void b(gj gjVar) {
        this.b = gjVar.e();
        this.d = gjVar.g();
        this.e = gjVar.h();
        this.c = gjVar.f();
        this.f = gjVar.i();
    }

    public static boolean c(gj gjVar) {
        return gjVar.c >= 0 && gjVar.d >= 0 && gjVar.e >= 0;
    }

    public static void d(@Nullable gj gjVar) {
        if (gjVar != null) {
            gjVar.close();
        }
    }

    public static boolean e(@Nullable gj gjVar) {
        return gjVar != null && gjVar.b();
    }
}
