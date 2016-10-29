package defpackage;

import cmf;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cmi */
public final class cmi extends d<cmf, cmh> {
    protected /* synthetic */ f b() {
        return a();
    }

    protected cmh a() {
        return new cmh();
    }

    protected void a(p pVar, cmh cmh, int i) throws IOException, ClassNotFoundException {
        cmh.a(pVar.e()).b(pVar.i());
    }

    protected void a(q qVar, cmf cmf) throws IOException {
        qVar.e(cmf.g).b(cmf.h);
    }
}
