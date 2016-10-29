package com.twitter.model.json.concon;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.json.featureswitch.JsonFeatureSwitchesValueObject;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonConconBundle extends b {
    @JsonField
    public String a;
    @JsonField
    public Map<String, JsonFeatureSwitchesValueObject> b;
}
