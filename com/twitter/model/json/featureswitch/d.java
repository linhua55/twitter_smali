package com.twitter.model.json.featureswitch;

import ciu;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.common.m;
import java.io.IOException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class d extends m<ciu> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public ciu a(JsonParser jsonParser) throws IOException {
        Object a;
        JsonToken d = jsonParser.d();
        switch (e.a[d.ordinal()]) {
            case p.View_android_focusable /*1*/:
                a = a.a(jsonParser);
                break;
            default:
                a = a.a(jsonParser, d);
                break;
        }
        return new ciu(a);
    }
}
