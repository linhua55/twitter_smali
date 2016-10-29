package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.ResponsivenessLevel;
import com.twitter.model.businessprofiles.ag;
import com.twitter.model.businessprofiles.q;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.f;
import com.twitter.util.object.e;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBusinessResponseData extends f<q> {
    @JsonField
    public ag a;
    @JsonField
    public ResponsivenessLevel b;
    @JsonField
    public TwitterUser c;

    public /* synthetic */ Object b() {
        return a();
    }

    public q a() {
        return new q(this.a, (ResponsivenessLevel) e.b(this.b, ResponsivenessLevel.LEVEL_UNKNOWN), this.c);
    }
}
