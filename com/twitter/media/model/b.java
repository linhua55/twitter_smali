package com.twitter.media.model;

import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
class b extends k<AnimatedGifFile> {
    private b() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, AnimatedGifFile animatedGifFile) throws IOException {
        qVar.b(animatedGifFile.d.getPath()).e(animatedGifFile.e.a()).e(animatedGifFile.e.b());
    }

    protected AnimatedGifFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new AnimatedGifFile(new File(e.a(pVar.i())), Size.a(pVar.e(), pVar.e()));
    }
}
