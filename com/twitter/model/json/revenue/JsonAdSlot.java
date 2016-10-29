package com.twitter.model.json.revenue;

import cnq;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAdSlot extends f<cnq> {
    @JsonField
    public String a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnq a() {
        if (this.a == null) {
            return null;
        }
        return new cnq(this.a);
    }
}
