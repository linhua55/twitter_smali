package com.twitter.media.model;

import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
class s extends k<SvgFile> {
    private s() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, SvgFile svgFile) throws IOException {
        qVar.b(svgFile.d.getPath()).a(svgFile.e, Size.a);
    }

    protected SvgFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new SvgFile(new File(e.a(pVar.i())), (Size) Size.a.c(pVar));
    }
}
