package defpackage;

import android.content.Context;
import com.twitter.android.at;
import com.twitter.util.object.e;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: vu */
public final class vu extends f<vs> {
    private at a;
    private at b;
    private at c;
    private Context d;

    public /* synthetic */ Object c() {
        return b();
    }

    public vu a(Context context) {
        this.d = context;
        return this;
    }

    public vu a(at atVar) {
        this.a = atVar;
        return this;
    }

    public vu b(at atVar) {
        this.b = atVar;
        return this;
    }

    public vu c(at atVar) {
        this.c = atVar;
        return this;
    }

    public vs b() {
        e.a(this.d);
        e.a(this.a);
        e.a(this.b);
        e.a(this.c);
        return new vs();
    }
}
