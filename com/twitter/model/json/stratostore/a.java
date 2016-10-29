package com.twitter.model.json.stratostore;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.json.common.m;
import java.io.IOException;

/* compiled from: Twttr */
public class a extends m<com.twitter.model.stratostore.a> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public com.twitter.model.stratostore.a a(JsonParser jsonParser) throws IOException {
        return new com.twitter.model.stratostore.a(jsonParser.g());
    }
}
