package defpackage;

import android.content.res.Resources;
import bz;
import com.facebook.datasource.d;
import com.facebook.drawee.components.a;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
/* renamed from: cy */
public class cy {
    private Resources a;
    private a b;
    private do c;
    private Executor d;

    public cy(Resources resources, a aVar, do doVar, Executor executor) {
        this.a = resources;
        this.b = aVar;
        this.c = doVar;
        this.d = executor;
    }

    public cv a(bz<d<com.facebook.common.references.a<gh>>> bzVar, String str, Object obj) {
        return new cv(this.a, this.b, this.c, this.d, bzVar, str, obj);
    }
}
