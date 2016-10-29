package com.twitter.model.json.featureswitch;

import bbn;
import cib;
import cil;
import ciu;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.m;
import com.twitter.util.collection.MutableMap;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class c extends m<cib> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public cib a(JsonParser jsonParser) throws IOException {
        Map e = g.e(jsonParser, JsonFeatureSwitchesValueObject.class);
        Map a = MutableMap.a();
        for (Entry entry : e.entrySet()) {
            ciu ciu = ((JsonFeatureSwitchesValueObject) entry.getValue()).a;
            if (ciu != null) {
                a.put(entry.getKey(), new cil((String) entry.getKey(), ciu.a));
            } else {
                bbn.a(new InvalidJsonFormatException("Feature switch value invalid format"));
            }
        }
        return new cib(a);
    }
}
