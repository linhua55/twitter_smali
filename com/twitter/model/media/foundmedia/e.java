package com.twitter.model.media.foundmedia;

import com.twitter.util.math.Size;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class e extends k<FoundMediaImageVariant> {
    private static final n<Size> a;

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = s.c(Size.a);
    }

    e() {
    }

    protected void a(q qVar, FoundMediaImageVariant foundMediaImageVariant) throws IOException {
        qVar.b(foundMediaImageVariant.b).a(foundMediaImageVariant.c, a).e(foundMediaImageVariant.d).b(foundMediaImageVariant.e);
    }

    protected FoundMediaImageVariant a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2;
        String i3 = pVar.i();
        Size size = (Size) pVar.a(a);
        String str = null;
        try {
            i2 = pVar.i();
        } catch (Exception e) {
            i2 = str;
        }
        return new FoundMediaImageVariant((String) com.twitter.util.object.e.a(i3), (Size) com.twitter.util.object.e.a(size), pVar.e(), i2);
    }
}
