package com.twitter.model.json.media.sru;

import cjo;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSruError extends f<cjo> {
    @JsonField
    public int a;
    @JsonField
    public String b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public cjo a() {
        return new cjo(this.a, this.b, this.c);
    }
}
