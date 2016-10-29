package defpackage;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.a;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: hb */
public abstract class hb extends gw {
    protected static final int[] h;
    protected final b i;
    protected int[] j;
    protected int k;
    protected CharacterEscapes l;
    protected d m;

    static {
        h = a.f();
    }

    public hb(b bVar, int i, com.fasterxml.jackson.core.b bVar2) {
        super(i, bVar2);
        this.j = h;
        this.m = DefaultPrettyPrinter.a;
        this.i = bVar;
        if (a(Feature.h)) {
            a(127);
        }
    }

    public JsonGenerator a(int i) {
        if (i < 0) {
            i = 0;
        }
        this.k = i;
        return this;
    }

    public JsonGenerator a(CharacterEscapes characterEscapes) {
        this.l = characterEscapes;
        if (characterEscapes == null) {
            this.j = h;
        } else {
            this.j = characterEscapes.a();
        }
        return this;
    }

    public JsonGenerator a(d dVar) {
        this.m = dVar;
        return this;
    }

    public final void a(String str, String str2) throws IOException, JsonGenerationException {
        a(str);
        b(str2);
    }
}
