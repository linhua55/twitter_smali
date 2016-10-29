package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.ab;
import com.twitter.model.businessprofiles.ad;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonHourMinuteRange extends f<ad> {
    @JsonField
    public ab a;
    @JsonField
    public ab b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ad a() {
        return new ad(this.a, this.b);
    }
}
