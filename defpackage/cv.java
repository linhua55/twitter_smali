package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import bt;
import bx;
import bz;
import cb;
import com.facebook.common.references.a;
import com.facebook.datasource.d;
import com.facebook.drawee.drawable.h;
import cz;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: cv */
public class cv extends cz<a<gh>, gk> {
    private static final Class<?> a;
    private final Resources b;
    private final do c;
    private bz<d<a<gh>>> d;

    protected /* synthetic */ void a(Object obj) {
        d((a) obj);
    }

    protected /* synthetic */ int b(Object obj) {
        return c((a) obj);
    }

    protected /* synthetic */ Object c(Object obj) {
        return b((a) obj);
    }

    protected /* synthetic */ Drawable d(Object obj) {
        return a((a) obj);
    }

    static {
        a = cv.class;
    }

    public cv(Resources resources, com.facebook.drawee.components.a aVar, do doVar, Executor executor, bz<d<a<gh>>> bzVar, String str, Object obj) {
        super(aVar, executor, str, obj);
        this.b = resources;
        this.c = doVar;
        a((bz) bzVar);
    }

    public void a(bz<d<a<gh>>> bzVar, String str, Object obj) {
        super.a(str, obj);
        a((bz) bzVar);
    }

    private void a(bz<d<a<gh>>> bzVar) {
        this.d = bzVar;
    }

    protected d<a<gh>> a() {
        if (cb.a(2)) {
            cb.a(a, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        return (d) this.d.a();
    }

    protected Drawable a(a<gh> aVar) {
        bx.b(a.a(aVar));
        gh ghVar = (gh) aVar.a();
        if (ghVar instanceof gi) {
            gi giVar = (gi) ghVar;
            Drawable bitmapDrawable = new BitmapDrawable(this.b, giVar.f());
            if (giVar.h() == 0 || giVar.h() == -1) {
                return bitmapDrawable;
            }
            return new h(bitmapDrawable, giVar.h());
        } else if (ghVar instanceof gf) {
            return this.c.a(((gf) ghVar).f());
        } else {
            throw new UnsupportedOperationException("Unrecognized image class: " + ghVar);
        }
    }

    protected gk b(a<gh> aVar) {
        bx.b(a.a(aVar));
        return (gk) aVar.a();
    }

    protected int c(@Nullable a<gh> aVar) {
        return aVar != null ? aVar.e() : 0;
    }

    protected void d(@Nullable a<gh> aVar) {
        a.c(aVar);
    }

    protected void a(@Nullable Drawable drawable) {
        if (drawable instanceof cr) {
            ((cr) drawable).a();
        }
    }

    public String toString() {
        return bt.a(this).a("super", super.toString()).a("dataSourceSupplier", this.d).toString();
    }
}
