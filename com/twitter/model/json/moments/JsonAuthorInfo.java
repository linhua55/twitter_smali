package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.a;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAuthorInfo extends f<a> {
    @JsonField
    public long a;
    @JsonField(name = {"verified"})
    public boolean b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;

    public /* synthetic */ Object b() {
        return a();
    }

    public a a() {
        return new a(this.a, this.b, this.c, this.d, this.e);
    }
}
