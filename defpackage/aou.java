package defpackage;

import android.content.Context;
import com.twitter.android.bu;
import com.twitter.util.object.g;

/* compiled from: Twttr */
/* renamed from: aou */
public abstract class aou implements g<bu> {
    private final Context a;

    protected abstract aow a();

    public /* synthetic */ Object b() {
        return c();
    }

    protected aou(Context context) {
        this.a = context;
    }

    public bu c() {
        aow a = a();
        return new bu(this.a, a.a, a.b, a.c, a.d, a.e);
    }
}
