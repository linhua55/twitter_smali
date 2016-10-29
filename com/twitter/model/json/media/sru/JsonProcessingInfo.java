package com.twitter.model.json.media.sru;

import cjo;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonProcessingInfo extends b {
    @JsonField(typeConverter = a.class)
    public int a;
    @JsonField
    public int b;
    @JsonField
    public cjo c;
}
