package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.t;
import com.twitter.util.object.e;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonGuideCategory extends f<t> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public t a() {
        return new t(e.b(this.a), e.b(this.b));
    }
}
