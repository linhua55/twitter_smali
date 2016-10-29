package com.twitter.model.json.moments;

import ckv;
import ckw;
import clx;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.s;
import com.twitter.model.moments.t;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonGuide extends f<ckv> {
    @JsonField
    public JsonNavigationBar a;
    @JsonField
    public t b;
    @JsonField
    public List<ckw> c;
    @JsonField
    public clx d;
    @JsonField
    public long e;
    @JsonField
    public String f;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckv a() {
        return new ckv(this.a != null ? this.a.a() : s.a, (t) e.b(this.b, new t("", "")), ImmutableList.a(this.c), (clx) e.b(this.d, clx.a), this.e, this.f);
    }
}
