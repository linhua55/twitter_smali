package com.twitter.model.moments;

import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.collection.r;
import com.twitter.util.serialization.n;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class aj {
    public static final n<aj> a;
    public final Map<String, String> b;

    static {
        a = new al();
    }

    public aj(Map<String, String> map) {
        this.b = r.a(new am(), map);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        for (Entry entry : this.b.entrySet()) {
            jsonGenerator.a((String) entry.getKey(), (String) entry.getValue());
        }
        jsonGenerator.d();
    }
}
