package com.twitter.util.serialization;

import android.net.Uri;
import java.io.IOException;

/* compiled from: Twttr */
final class c extends ap<Uri> {
    c() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Uri uri) throws IOException {
        qVar.b(uri.toString());
    }

    protected Uri b(p pVar) throws IOException, ClassNotFoundException {
        String p = pVar.p();
        return p.isEmpty() ? Uri.EMPTY : Uri.parse(p);
    }
}
