package com.twitter.library.api.geo;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.json.common.g;
import com.twitter.util.object.e;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class h extends t<g, cd> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }

    protected g b(JsonParser jsonParser) throws IOException {
        return new g(c(jsonParser));
    }

    static List<TwitterPlace> c(JsonParser jsonParser) throws IOException {
        Object obj = null;
        JsonToken a = jsonParser.a();
        List list = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (i.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    obj = jsonParser.g();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"result".equals(obj)) {
                        jsonParser.c();
                        break;
                    }
                    while (a != null && a != JsonToken.END_OBJECT) {
                        switch (i.a[a.ordinal()]) {
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                if (!"places".equals(obj)) {
                                    jsonParser.c();
                                    break;
                                }
                                list = g.d(jsonParser, TwitterPlace.class);
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                obj = jsonParser.g();
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return e.a(list);
    }
}
