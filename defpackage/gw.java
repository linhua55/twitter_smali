package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.b;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: gw */
public abstract class gw extends JsonGenerator {
    protected static final int b;
    protected b c;
    protected int d;
    protected boolean e;
    protected hd f;
    protected boolean g;

    protected abstract void g(String str) throws IOException;

    protected abstract void h();

    static {
        b = (Feature.e.c() | Feature.h.c()) | Feature.i.c();
    }

    protected gw(int i, b bVar) {
        this.d = i;
        this.c = bVar;
        this.f = hd.a(Feature.i.a(i) ? ha.a((JsonGenerator) this) : null);
        this.e = Feature.e.a(i);
    }

    public final boolean a(Feature feature) {
        return (this.d & feature.c()) != 0;
    }

    public final hd g() {
        return this.f;
    }

    public void close() throws IOException {
        this.g = true;
    }

    protected final int a(int i, int i2) throws IOException {
        if (i2 < 56320 || i2 > 57343) {
            f("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2));
        }
        return (65536 + ((i - 55296) << 10)) + (i2 - 56320);
    }
}
