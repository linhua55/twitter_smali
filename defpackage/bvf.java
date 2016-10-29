package defpackage;

import com.twitter.config.d;
import com.twitter.config.f;
import com.twitter.library.client.bf;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
/* renamed from: bvf */
public abstract class bvf implements f {
    private final bf a;

    protected abstract void f();

    protected bvf() {
        this.a = new bvg(this);
        d.a(this);
        bg.a().a(this.a);
        f();
    }

    public void a() {
        f();
    }
}
