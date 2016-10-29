package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.timeline.o;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonInlinePrompt extends b {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public o c;
    @JsonField
    public o d;

    public boolean a() {
        return this.a != null;
    }
}
