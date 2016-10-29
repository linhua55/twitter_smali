package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.Translation;
import com.twitter.model.core.bg;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTranslatedTweet extends f<Translation> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public bg c;
    @JsonField
    public String d;
    @JsonField
    public String e;

    public /* synthetic */ Object b() {
        return a();
    }

    public JsonTranslatedTweet() {
        this.a = -1;
    }

    public Translation a() {
        if (this.a == -1 || this.d == null || this.e == null || this.b == null) {
            return null;
        }
        return new Translation(this.a, this.e, this.d, this.b, this.c);
    }
}
