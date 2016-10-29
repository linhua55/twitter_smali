package defpackage;

import android.content.Context;
import bx;
import bz;
import com.facebook.cache.disk.h;
import com.facebook.common.memory.b;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.memory.x;
import com.facebook.imagepipeline.producers.bj;
import fi;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: fl */
public class fl {
    private dq a;
    private bz<ex> b;
    private eg c;
    private final Context d;
    private boolean e;
    private bz<ex> f;
    private ff g;
    private eu h;
    private fx i;
    private bz<Boolean> j;
    private h k;
    private b l;
    private bj m;
    private g n;
    private x o;
    private fz p;
    private Set<go> q;
    private boolean r;
    private h s;

    private fl(Context context) {
        this.e = false;
        this.r = true;
        this.d = (Context) bx.a(context);
    }

    public fl a(bz<ex> bzVar) {
        this.b = (bz) bx.a(bzVar);
        return this;
    }

    public fl b(bz<ex> bzVar) {
        this.f = (bz) bx.a(bzVar);
        return this;
    }

    public fl a(ff ffVar) {
        this.g = ffVar;
        return this;
    }

    public fl a(h hVar) {
        this.k = hVar;
        return this;
    }

    public fl a(b bVar) {
        this.l = bVar;
        return this;
    }

    public fl a(bj bjVar) {
        this.m = bjVar;
        return this;
    }

    public fi a() {
        return new fi(this, null);
    }
}
