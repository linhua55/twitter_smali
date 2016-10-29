package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.common.m;
import com.twitter.model.stratostore.a;
import com.twitter.model.stratostore.b;
import com.twitter.model.stratostore.c;
import com.twitter.model.stratostore.e;
import com.twitter.model.stratostore.f;
import com.twitter.model.stratostore.g;
import com.twitter.model.stratostore.h;
import com.twitter.model.stratostore.i;
import com.twitter.model.stratostore.j;
import com.twitter.util.collection.r;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
public class d extends m<h> {
    private static final Map<String, Class<? extends f>> a;

    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    static {
        a = (Map) r.d().b("tweet_views", j.class).b("stickerInfo", c.class).b("altText", a.class).b("mediaRestrictions", b.class).q();
    }

    public h a(JsonParser jsonParser) throws IOException {
        i iVar = new i();
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            if (a.containsKey(e)) {
                iVar.a((Class) a.get(e), a(jsonParser, e, (Class) a.get(e)));
            }
            jsonParser.c();
        }
        return iVar.a();
    }

    private static <T extends f> com.twitter.model.stratostore.d a(JsonParser jsonParser, String str, Class<T> cls) throws IOException {
        e eVar = new e(str);
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            if ("r".equals(e)) {
                a(jsonParser, eVar, (Class) cls);
            } else if ("ttl".equals(e)) {
                eVar.a(jsonParser.o());
            }
            jsonParser.c();
        }
        return eVar.a();
    }

    private static void a(JsonParser jsonParser, e eVar, Class<? extends f> cls) throws IOException {
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            if ("err".equals(e)) {
                eVar.a((g) LoganSquare.typeConverterFor(g.class).parse(jsonParser));
                eVar.b(2);
            } else if ("missing".equals(e)) {
                eVar.b(3);
            } else if ("ok".equals(e)) {
                eVar.a((f) com.twitter.model.json.common.g.c(jsonParser, cls));
                eVar.b(1);
            }
            jsonParser.c();
        }
    }
}
