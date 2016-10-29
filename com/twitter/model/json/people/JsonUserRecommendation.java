package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.f;
import com.twitter.model.people.am;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonUserRecommendation extends f<am> {
    @JsonField
    public TwitterUser a;
    @JsonField
    public String b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public am a() {
        return new am(this.a, this.b, this.c);
    }
}
