package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: aw */
public class aw implements av {
    private final File a;

    private aw(File file) {
        this.a = (File) bx.a((Object) file);
    }

    public File c() {
        return this.a;
    }

    public InputStream a() throws IOException {
        return new FileInputStream(this.a);
    }

    public long b() {
        return this.a.length();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof aw)) {
            return false;
        }
        return this.a.equals(((aw) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public static aw a(File file) {
        return file != null ? new aw(file) : null;
    }
}
