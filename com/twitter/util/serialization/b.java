package com.twitter.util.serialization;

import android.graphics.RectF;
import java.io.IOException;

/* compiled from: Twttr */
final class b extends ap<RectF> {
    b() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, RectF rectF) throws IOException {
        qVar.b(rectF.left).b(rectF.top).b(rectF.right).b(rectF.bottom);
    }

    protected RectF b(p pVar) throws IOException, ClassNotFoundException {
        return new RectF(pVar.g(), pVar.g(), pVar.g(), pVar.g());
    }
}
