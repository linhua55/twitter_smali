package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
final class h extends m<M> {
    final /* synthetic */ Class a;
    private JsonMapper<J> b;

    h(Class cls) {
        this.a = cls;
    }

    public M parse(JsonParser jsonParser) throws IOException {
        if (this.b == null) {
            this.b = LoganSquare.mapperFor(this.a);
        }
        return j.a((f) this.b.parse(jsonParser));
    }
}
