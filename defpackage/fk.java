package defpackage;

import android.content.Context;
import bz;
import java.io.File;

/* compiled from: Twttr */
/* renamed from: fk */
final class fk implements bz<File> {
    final /* synthetic */ Context a;

    fk(Context context) {
        this.a = context;
    }

    public /* synthetic */ Object a() {
        return b();
    }

    public File b() {
        return this.a.getApplicationContext().getCacheDir();
    }
}
