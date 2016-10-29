package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonConversationEvent extends b {
    @JsonField
    public long e;
    @JsonField
    public String f;
    @JsonField(name = {"time"})
    public long g;
    @JsonField
    public long h;
    @JsonField
    public boolean i;
}
