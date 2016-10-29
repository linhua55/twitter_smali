package defpackage;

import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import cl;
import com.facebook.imagepipeline.animated.base.g;
import com.facebook.imagepipeline.animated.base.i;
import com.facebook.imagepipeline.animated.base.j;
import com.facebook.imagepipeline.animated.base.l;
import com.facebook.imagepipeline.animated.base.n;
import com.facebook.imagepipeline.animated.impl.b;
import com.facebook.imagepipeline.animated.impl.c;
import com.facebook.imagepipeline.animated.impl.h;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: Twttr */
/* renamed from: do */
public class do {
    private final b a;
    private final h b;
    private final dt c;
    private final ScheduledExecutorService d;
    private final cl e;
    private final Resources f;

    public do(b bVar, h hVar, dt dtVar, ScheduledExecutorService scheduledExecutorService, Resources resources) {
        this.a = bVar;
        this.b = hVar;
        this.c = dtVar;
        this.d = scheduledExecutorService;
        this.e = new dp(this);
        this.f = resources;
    }

    public com.facebook.imagepipeline.animated.base.b a(n nVar) {
        return a(nVar, j.a);
    }

    public com.facebook.imagepipeline.animated.base.b a(n nVar, j jVar) {
        l a = nVar.a();
        return a(jVar, this.a.a(nVar, new Rect(0, 0, a.a(), a.b())));
    }

    private com.facebook.imagepipeline.animated.base.b a(j jVar, g gVar) {
        i iVar;
        DisplayMetrics displayMetrics = this.f.getDisplayMetrics();
        c a = this.b.a(gVar, jVar);
        if (jVar.e) {
            iVar = new com.facebook.imagepipeline.animated.impl.i(this.c, displayMetrics);
        } else {
            iVar = com.facebook.imagepipeline.animated.impl.j.g();
        }
        return new com.facebook.imagepipeline.animated.base.b(this.d, a, iVar, this.e);
    }
}
