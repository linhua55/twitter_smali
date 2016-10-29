package com.twitter.media.model;

import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
class d extends k<ImageFile> {
    private d() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ImageFile imageFile) throws IOException {
        qVar.b(imageFile.d.getPath()).e(imageFile.e.a()).e(imageFile.e.b());
    }

    protected ImageFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ImageFile(new File(e.a(pVar.i())), Size.a(pVar.e(), pVar.e()));
    }
}
