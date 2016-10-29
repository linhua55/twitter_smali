package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.x;
import com.twitter.model.moments.z;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonLinkTitleCard extends f<x> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;

    public /* synthetic */ Object b() {
        return a();
    }

    public x a() {
        return (x) new z().a(this.a).b(this.b).c(this.c).d(this.d).r();
    }
}
