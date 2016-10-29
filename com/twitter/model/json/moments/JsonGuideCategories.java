package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.s;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonGuideCategories extends f<s> {
    @JsonField
    public JsonNavigationBar a;

    public /* synthetic */ Object b() {
        return a();
    }

    public s a() {
        if (this.a == null) {
            return s.a;
        }
        return this.a.a();
    }
}
