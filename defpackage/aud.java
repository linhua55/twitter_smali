package defpackage;

import cgu;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: aud */
public class aud<P> extends cgu<P> {
    private final j<P> a;

    public aud(j<P> jVar) {
        this.a = jVar;
    }

    public int aU_() {
        return this.a != null ? this.a.a() : 0;
    }

    public P a(int i) {
        if (i >= aU_() || this.a == null) {
            return null;
        }
        this.a.a(i);
        return this.a.a;
    }

    public void close() throws IOException {
        if (this.a != null) {
            this.a.close();
        }
    }

    public j<P> b() {
        return this.a;
    }

    public int hashCode() {
        return this.a == null ? 0 : this.a.hashCode();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof aud) && ObjectUtils.a(((aud) obj).b(), b()));
    }
}
