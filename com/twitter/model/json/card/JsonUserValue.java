package com.twitter.model.json.card;

import cgp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonUserValue extends f<cgp> {
    @JsonField
    public String a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cgp a() {
        return new cgp(this.a);
    }
}
