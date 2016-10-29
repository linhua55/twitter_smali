package defpackage;

import java.io.File;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cuo */
final class cuo implements Iterable<File> {
    final /* synthetic */ File a;
    final /* synthetic */ String[] b;

    cuo(File file, String[] strArr) {
        this.a = file;
        this.b = strArr;
    }

    public Iterator<File> iterator() {
        return new cup(this);
    }
}
