package com.twitter.model.card.property;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class d extends k<Vector2F> {
    private d() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Vector2F vector2F) throws IOException {
        qVar.b(vector2F.x).b(vector2F.y);
    }

    protected Vector2F a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new Vector2F(pVar.g(), pVar.g());
    }
}
