package com.twitter.library.scribe;

import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import java.io.IOException;

/* compiled from: Twttr */
public class a {
    public static final d<a, d> a;
    public final long b;
    public final long c;

    static {
        a = new c(null);
    }

    private a(d dVar) {
        this.b = dVar.a;
        this.c = dVar.b;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && a((a) obj));
    }

    public boolean a(a aVar) {
        return this == aVar || (aVar != null && this.b == aVar.b && this.c == aVar.c);
    }

    public int hashCode() {
        return ObjectUtils.a(Long.valueOf(this.b), Long.valueOf(this.c));
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("slot_id", this.b);
        jsonGenerator.a("ttl_secs", this.c);
        jsonGenerator.d();
    }
}
