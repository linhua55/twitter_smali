package defpackage;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import java.io.File;

/* compiled from: Twttr */
/* renamed from: cxg */
public class cxg implements cxf {
    private final Context a;
    private final String b;
    private final String c;

    public cxg(p pVar) {
        if (pVar.E() == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.a = pVar.E();
        this.b = pVar.G();
        this.c = "Android/" + this.a.getPackageName();
    }

    public File a() {
        return a(this.a.getFilesDir());
    }

    File a(File file) {
        if (file == null) {
            f.h().a("Fabric", "Null File");
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            f.h().d("Fabric", "Couldn't create file");
        }
        return null;
    }
}
