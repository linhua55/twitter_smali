package defpackage;

import bz;
import com.android.internal.util.Predicate;
import com.facebook.cache.common.a;
import com.facebook.datasource.d;
import com.facebook.datasource.e;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.producers.bw;
import com.facebook.imagepipeline.producers.ce;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequest.RequestLevel;
import ew;
import fw;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
/* renamed from: fg */
public class fg {
    private static final CancellationException a;
    private final ft b;
    private final go c;
    private final bz<Boolean> d;
    private final ew<a, gh> e;
    private final ew<a, PooledByteBuffer> f;
    private final eb g;
    private final eb h;
    private final eg i;
    private AtomicLong j;

    static {
        a = new CancellationException("Prefetching is not enabled");
    }

    public fg(ft ftVar, Set<go> set, bz<Boolean> bzVar, ew<a, gh> ewVar, ew<a, PooledByteBuffer> ewVar2, eb ebVar, eb ebVar2, eg egVar) {
        this.j = new AtomicLong();
        this.b = ftVar;
        this.c = new gn(set);
        this.d = bzVar;
        this.e = ewVar;
        this.f = ewVar2;
        this.g = ebVar;
        this.h = ebVar2;
        this.i = egVar;
    }

    private String d() {
        return String.valueOf(this.j.getAndIncrement());
    }

    public d<com.facebook.common.references.a<gh>> a(ImageRequest imageRequest, Object obj) {
        try {
            return a(this.b.a(imageRequest), imageRequest, RequestLevel.d, obj);
        } catch (Throwable e) {
            return e.a(e);
        }
    }

    public d<com.facebook.common.references.a<gh>> b(ImageRequest imageRequest, Object obj) {
        try {
            return a(this.b.a(imageRequest), imageRequest, RequestLevel.a, obj);
        } catch (Throwable e) {
            return e.a(e);
        }
    }

    public void a() {
        Predicate fhVar = new fh(this);
        this.e.a(fhVar);
        this.f.a(fhVar);
    }

    public void b() {
        this.g.a();
        this.h.a();
    }

    public void c() {
        a();
        b();
    }

    private <T> d<com.facebook.common.references.a<T>> a(bw<com.facebook.common.references.a<T>> bwVar, ImageRequest imageRequest, RequestLevel requestLevel, Object obj) {
        boolean z = false;
        try {
            RequestLevel a = RequestLevel.a(imageRequest.k(), requestLevel);
            String d = d();
            go goVar = this.c;
            if (imageRequest.h() || !com.facebook.common.util.d.a(imageRequest.b())) {
                z = true;
            }
            return fw.a(bwVar, new ce(imageRequest, d, goVar, obj, a, false, z, imageRequest.j()), this.c);
        } catch (Throwable e) {
            return e.a(e);
        }
    }
}
