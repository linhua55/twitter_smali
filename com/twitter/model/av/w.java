package com.twitter.model.av;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
final class w extends k<VideoCta> {
    final n<VideoCtaType> a;

    private w() {
        this.a = s.a(VideoCtaType.class);
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, VideoCta videoCta) throws IOException {
        this.a.b(qVar, videoCta.c);
        s.a(qVar, videoCta.d, s.i, s.i);
    }

    protected VideoCta a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new VideoCta((VideoCtaType) this.a.a(pVar), s.a(pVar, s.i, s.i));
    }
}
