package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: ape */
public class ape<A extends apd> {
    protected final Activity a;
    protected final Class<?> b;

    protected ape(Activity activity, Class<?> cls) {
        this.a = activity;
        this.b = cls;
    }

    protected Intent a(A a) {
        return a.w().setComponent(new ComponentName(this.a, this.b));
    }

    public void b(A a) {
        h.a();
        this.a.startActivity(a(a));
    }
}
