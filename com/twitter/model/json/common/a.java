package com.twitter.model.json.common;

import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
class a extends m<String> {
    final /* synthetic */ DefaultRegistrar a;

    a(DefaultRegistrar defaultRegistrar) {
        this.a = defaultRegistrar;
    }

    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public String a(JsonParser jsonParser) throws IOException {
        return jsonParser.a(null);
    }
}
