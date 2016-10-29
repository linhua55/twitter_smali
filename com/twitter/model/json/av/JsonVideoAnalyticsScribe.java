package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.d;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonVideoAnalyticsScribe extends f<d> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public d a() {
        if (this.a == null || this.b == null) {
            return null;
        }
        try {
            return new d(this.b, Long.parseLong(this.a));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
