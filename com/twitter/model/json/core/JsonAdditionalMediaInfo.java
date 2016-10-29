package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.b;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAdditionalMediaInfo extends b {
    @JsonField
    public JsonMediaCallToActions a;
    @JsonField
    public String b;
    @JsonField
    public boolean c;
    @JsonField
    public String d;
    @JsonField
    public TwitterUser e;
}
