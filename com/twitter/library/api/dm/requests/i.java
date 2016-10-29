package com.twitter.library.api.dm.requests;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.dms.ad;
import com.twitter.model.dms.bd;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.j;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class i extends t<bd, cd> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected bd b(JsonParser jsonParser) throws IOException {
        JsonToken d = jsonParser.d();
        while (d != null && d != JsonToken.END_ARRAY) {
            if (d == JsonToken.START_OBJECT) {
                return c(jsonParser);
            }
            d = jsonParser.a();
        }
        return null;
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }

    public static bd c(JsonParser jsonParser) throws IOException {
        r d = r.d();
        r d2 = r.d();
        n d3 = n.d();
        JsonToken a = jsonParser.a();
        Object obj = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (j.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"permissions".equals(obj)) {
                        if (!"users".equals(obj)) {
                            jsonParser.c();
                            break;
                        }
                        d3.c(g.f(jsonParser, TwitterUser.class));
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.END_OBJECT) {
                        switch (j.a[a.ordinal()]) {
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                if (!"id_keys".equals(obj)) {
                                    if (!"screen_name_keys".equals(obj)) {
                                        jsonParser.c();
                                        break;
                                    }
                                    d2.b(j.b(g.e(jsonParser, ad.class)));
                                    break;
                                }
                                d.b(j.a(g.e(jsonParser, ad.class)));
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                jsonParser.c();
                                break;
                            case Util.TYPE_OTHER /*3*/:
                                obj = jsonParser.g();
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    obj = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new bd((Map) d.q(), (Map) d2.q(), (List) d3.q());
    }
}
