package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import java.io.IOException;

/* compiled from: Twttr */
final class i extends m<B> {
    final /* synthetic */ Class a;
    private JsonMapper<J> b;

    i(Class cls) {
        this.a = cls;
    }

    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public B a(JsonParser jsonParser) throws IOException {
        if (this.b == null) {
            this.b = LoganSquare.mapperFor(this.a);
        }
        return (f) ObjectUtils.a(j.a((e) this.b.parse(jsonParser)));
    }
}
