package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import android.view.LayoutInflater;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.util.math.Size;
import rx.t;
import rx.w;

/* compiled from: Twttr */
/* renamed from: aje */
public class aje {
    private final Context a;
    private final aid b;
    private final aie c;
    private final t d;
    private final t e;

    public static aje a(Context context, MomentPage momentPage, Size size, Size size2, LruCache<String, Bitmap> lruCache) {
        return new aje(context, new aie(momentPage, new aiy(momentPage, size, size2, ajl.a(context.getResources(), LayoutInflater.from(context), context), ajv.a(), new ajf(context)), lruCache), new aid(), aiv.a(), cym.a());
    }

    public aje(Context context, aie aie, aid aid, t tVar, t tVar2) {
        this.a = context;
        this.b = aid;
        this.c = aie;
        this.d = tVar;
        this.e = tVar2;
    }

    public w<ajj> a() {
        return this.c.a().b(this.d).a(this.e).c(b());
    }

    private cyw<Bitmap, ajj> b() {
        return new ajg(this);
    }
}
