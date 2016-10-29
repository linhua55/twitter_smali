package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import bx;
import com.facebook.imagepipeline.animated.base.l;
import com.facebook.imagepipeline.animated.base.n;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import com.facebook.imagepipeline.animated.impl.b;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.common.a;
import com.facebook.imagepipeline.gif.GifImage;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.webp.WebPImage;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: dq */
public class dq {
    private final b a;
    private final g b;

    public dq(b bVar, g gVar) {
        this.a = bVar;
        this.b = gVar;
    }

    public gh a(gj gjVar, a aVar) {
        com.facebook.common.references.a c = gjVar.c();
        bx.a(c);
        try {
            bx.b(!aVar.c);
            PooledByteBuffer pooledByteBuffer = (PooledByteBuffer) c.a();
            gh a = a(aVar, GifImage.a(pooledByteBuffer.b(), pooledByteBuffer.a()));
            return a;
        } finally {
            com.facebook.common.references.a.c(c);
        }
    }

    public gh b(gj gjVar, a aVar) {
        com.facebook.common.references.a c = gjVar.c();
        bx.a(c);
        try {
            bx.a(!aVar.c);
            PooledByteBuffer pooledByteBuffer = (PooledByteBuffer) c.a();
            gh a = a(aVar, WebPImage.a(pooledByteBuffer.b(), pooledByteBuffer.a()));
            return a;
        } finally {
            com.facebook.common.references.a.c(c);
        }
    }

    private gf a(a aVar, l lVar) {
        Iterable a;
        Throwable th;
        com.facebook.common.references.a aVar2 = null;
        try {
            int c;
            if (aVar.e) {
                c = lVar.c() - 1;
            } else {
                c = 0;
            }
            if (aVar.f) {
                a = a(lVar);
                try {
                    aVar2 = com.facebook.common.references.a.b((com.facebook.common.references.a) a.get(c));
                } catch (Throwable th2) {
                    th = th2;
                    com.facebook.common.references.a.c(null);
                    com.facebook.common.references.a.a(a);
                    throw th;
                }
            }
            a = null;
            if (aVar.d && r1 == null) {
                aVar2 = a(lVar, c);
            }
            gf gfVar = new gf(n.b(lVar).a(aVar2).a(c).a(a).e());
            com.facebook.common.references.a.c(aVar2);
            com.facebook.common.references.a.a(a);
            return gfVar;
        } catch (Throwable th3) {
            th = th3;
            a = null;
            com.facebook.common.references.a.c(null);
            com.facebook.common.references.a.a(a);
            throw th;
        }
    }

    private com.facebook.common.references.a<Bitmap> a(l lVar, int i) {
        com.facebook.common.references.a<Bitmap> a = a(lVar.a(), lVar.b());
        new AnimatedImageCompositor(this.a.a(n.a(lVar), null), new dr(this)).a(i, (Bitmap) a.a());
        return a;
    }

    private List<com.facebook.common.references.a<Bitmap>> a(l lVar) {
        List<com.facebook.common.references.a<Bitmap>> arrayList = new ArrayList();
        com.facebook.imagepipeline.animated.base.g a = this.a.a(n.a(lVar), null);
        AnimatedImageCompositor animatedImageCompositor = new AnimatedImageCompositor(a, new ds(this, arrayList));
        for (int i = 0; i < a.c(); i++) {
            com.facebook.common.references.a a2 = a(a.d(), a.e());
            animatedImageCompositor.a(i, (Bitmap) a2.a());
            arrayList.add(a2);
        }
        return arrayList;
    }

    @SuppressLint({"NewApi"})
    private com.facebook.common.references.a<Bitmap> a(int i, int i2) {
        com.facebook.common.references.a<Bitmap> a = this.b.a(i, i2);
        ((Bitmap) a.a()).eraseColor(0);
        if (VERSION.SDK_INT >= 12) {
            ((Bitmap) a.a()).setHasAlpha(true);
        }
        return a;
    }
}
