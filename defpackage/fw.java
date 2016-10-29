package defpackage;

import com.facebook.common.references.a;
import com.facebook.datasource.d;
import com.facebook.imagepipeline.producers.bw;
import com.facebook.imagepipeline.producers.ce;
import fu;
import go;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
/* renamed from: fw */
public class fw<T> extends fu<a<T>> {
    protected /* synthetic */ void b(Object obj, boolean z) {
        a((a) obj, z);
    }

    public /* synthetic */ Object d() {
        return j();
    }

    public static <T> d<a<T>> a(bw<a<T>> bwVar, ce ceVar, go goVar) {
        return new fw(bwVar, ceVar, goVar);
    }

    private fw(bw<a<T>> bwVar, ce ceVar, go goVar) {
        super(bwVar, ceVar, goVar);
    }

    @Nullable
    public a<T> j() {
        return a.b((a) super.d());
    }

    protected void a(a<T> aVar) {
        a.c(aVar);
    }

    protected void a(a<T> aVar, boolean z) {
        super.b(a.b(aVar), z);
    }
}
