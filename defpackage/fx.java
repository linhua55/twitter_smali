package defpackage;

import bo;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imageformat.b;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.common.a;
import java.io.InputStream;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: fx */
public class fx {
    private final dq a;
    private final g b;

    public fx(dq dqVar, g gVar) {
        this.a = dqVar;
        this.b = gVar;
    }

    public gh a(gj gjVar, int i, gm gmVar, a aVar) {
        ImageFormat e = gjVar.e();
        if (e == null || e == ImageFormat.j) {
            e = b.b(gjVar.d());
        }
        switch (fy.a[e.ordinal()]) {
            case p.View_android_focusable /*1*/:
                throw new IllegalArgumentException("unknown image format");
            case p.View_paddingStart /*2*/:
                return a(gjVar, i, gmVar);
            case p.View_paddingEnd /*3*/:
                return a(gjVar, aVar);
            case p.View_theme /*4*/:
                return b(gjVar, aVar);
            default:
                return a(gjVar);
        }
    }

    public gh a(gj gjVar, a aVar) {
        InputStream d = gjVar.d();
        if (d == null) {
            return null;
        }
        try {
            gh a;
            if (com.facebook.imageformat.a.a(d)) {
                a = this.a.a(gjVar, aVar);
                return a;
            }
            a = a(gjVar);
            bo.a(d);
            return a;
        } finally {
            bo.a(d);
        }
    }

    public gi a(gj gjVar) {
        com.facebook.common.references.a a = this.b.a(gjVar);
        try {
            gi giVar = new gi(a, gl.a, gjVar.f());
            return giVar;
        } finally {
            a.close();
        }
    }

    public gi a(gj gjVar, int i, gm gmVar) {
        com.facebook.common.references.a a = this.b.a(gjVar, i);
        try {
            gi giVar = new gi(a, gmVar, gjVar.f());
            return giVar;
        } finally {
            a.close();
        }
    }

    public gh b(gj gjVar, a aVar) {
        return this.a.b(gjVar, aVar);
    }
}
