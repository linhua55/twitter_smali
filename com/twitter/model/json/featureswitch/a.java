package com.twitter.model.json.featureswitch;

import bbn;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class a {
    public static List<Object> a(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a.e()) {
                d.c(a(jsonParser, a));
            }
            a = jsonParser.a();
        }
        return (List) d.q();
    }

    public static Object a(JsonParser jsonParser, JsonToken jsonToken) throws IOException {
        switch (b.a[jsonToken.ordinal()]) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
                return Boolean.valueOf(jsonParser.m());
            case p.View_paddingEnd /*3*/:
                return Long.valueOf(jsonParser.j());
            case p.View_theme /*4*/:
                return Double.valueOf(jsonParser.k());
            case p.Toolbar_contentInsetStart /*5*/:
                return jsonParser.g();
            case p.Toolbar_contentInsetEnd /*6*/:
                return null;
            default:
                bbn.a(new InvalidJsonFormatException("Invalid FeatureSwitch value for parsing."));
                jsonParser.c();
                return null;
        }
    }
}
