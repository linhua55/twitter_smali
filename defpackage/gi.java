package defpackage;

import android.graphics.Bitmap;
import bx;
import com.facebook.common.references.a;
import com.facebook.common.references.d;
import gp;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
/* renamed from: gi */
public class gi extends gg {
    @GuardedBy("this")
    private a<Bitmap> a;
    private volatile Bitmap b;
    private final gm c;
    private final int d;

    public gi(Bitmap bitmap, d<Bitmap> dVar, gm gmVar, int i) {
        this.b = (Bitmap) bx.a(bitmap);
        this.a = a.a(this.b, (d) bx.a(dVar));
        this.c = gmVar;
        this.d = i;
    }

    public gi(a<Bitmap> aVar, gm gmVar, int i) {
        this.a = (a) bx.a(aVar.c());
        this.b = (Bitmap) this.a.a();
        this.c = gmVar;
        this.d = i;
    }

    public void close() {
        synchronized (this) {
            if (this.a == null) {
                return;
            }
            a aVar = this.a;
            this.a = null;
            this.b = null;
            aVar.close();
        }
    }

    public synchronized boolean c() {
        return this.a == null;
    }

    public Bitmap f() {
        return this.b;
    }

    public int d() {
        return gp.a(this.b);
    }

    public int a() {
        Bitmap bitmap = this.b;
        return bitmap == null ? 0 : bitmap.getWidth();
    }

    public int b() {
        Bitmap bitmap = this.b;
        return bitmap == null ? 0 : bitmap.getHeight();
    }

    public int h() {
        return this.d;
    }

    public gm g() {
        return this.c;
    }
}
