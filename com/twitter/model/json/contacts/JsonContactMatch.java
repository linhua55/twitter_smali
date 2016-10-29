package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.b;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonContactMatch extends b {
    @JsonField
    public TwitterUser a;
    @JsonField
    public List<Integer> b;
}
