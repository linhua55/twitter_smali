package com.twitter.model.card.property;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class b extends k<ImageSpec> {
    private b() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ImageSpec imageSpec) throws IOException {
        qVar.b(imageSpec.c);
        Vector2F.a.b(qVar, imageSpec.d);
        qVar.b(imageSpec.e);
    }

    protected ImageSpec a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2 = pVar.i();
        Vector2F vector2F = (Vector2F) Vector2F.a.a(pVar);
        String str = null;
        try {
            str = pVar.i();
        } catch (IOException e) {
        }
        return new ImageSpec(i2, vector2F, str);
    }
}
