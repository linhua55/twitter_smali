package defpackage;

import android.app.Activity;
import android.content.Intent;
import api;
import apj;
import com.twitter.app.common.util.t;
import com.twitter.util.collection.MutableList;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aph */
public class aph<A extends apd, R> extends ape<A> {
    private final int c;
    private final List<apk<R>> d;
    private final apj<R> e;

    protected <C extends Activity & t> aph(C c, Class<?> cls, int i, apj<R> apj_R) {
        super(c, cls);
        this.d = MutableList.a();
        this.c = i;
        this.e = apj_R;
        ((t) c).a(i, new api(this));
    }

    public void c(A a) {
        h.a();
        this.a.startActivityForResult(a(a), this.c);
    }

    public void a(apk<R> apk_R) {
        h.a();
        this.d.add(apk_R);
    }

    public void b(apk<R> apk_R) {
        h.a();
        this.d.remove(apk_R);
    }

    private void a(int i, Intent intent) {
        if (!this.d.isEmpty()) {
            Object b = this.e.b(intent);
            for (apk a : this.d) {
                a.a(i, b);
            }
        }
    }
}
