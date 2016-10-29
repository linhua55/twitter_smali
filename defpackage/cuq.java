package defpackage;

import ctc;
import java.io.File;

/* compiled from: Twttr */
/* renamed from: cuq */
final class cuq implements ctc<String, File> {
    final /* synthetic */ File a;

    cuq(File file) {
        this.a = file;
    }

    public File a(String str) {
        File file;
        if (str != null) {
            file = new File(this.a, str);
        } else {
            file = null;
        }
        if (file == null || !file.isFile()) {
            return null;
        }
        return file;
    }
}
