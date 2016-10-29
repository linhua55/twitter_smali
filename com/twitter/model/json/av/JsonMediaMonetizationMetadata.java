package com.twitter.model.json.av;

import bbl;
import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.n;
import com.twitter.model.av.p;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonMediaMonetizationMetadata extends f<n> {
    @JsonField
    public boolean a;
    @JsonField
    public List<Integer> b;
    @JsonField
    public List<JsonAdvertiser> c;
    @JsonField
    public List<Integer> d;
    @JsonField
    public List<JsonAdvertiser> e;
    @JsonField
    public List<Integer> f;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
    /* compiled from: Twttr */
    public class JsonAdvertiser extends b {
        @JsonField
        public String a;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public n a() {
        return new p().a(this.a).a(this.b).b(a(this.c)).c(this.d).d(a(this.e)).e(this.f).c();
    }

    private static List<Integer> a(List<JsonAdvertiser> list) {
        if (list == null) {
            return null;
        }
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        for (JsonAdvertiser jsonAdvertiser : list) {
            try {
                d.c(Integer.valueOf(Integer.parseInt(jsonAdvertiser.a)));
            } catch (Throwable e) {
                bbn.a(new bbl(e));
            }
        }
        return (List) d.q();
    }
}
