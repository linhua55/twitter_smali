package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.account.LvEligibilityResponse;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonLoginVerificationEligibility extends f<LvEligibilityResponse> {
    @JsonField(name = {"enrolled"})
    public String a;
    @JsonField(name = {"enrolled_elsewhere"})
    public boolean b;

    public /* synthetic */ Object b() {
        return a();
    }

    public LvEligibilityResponse a() {
        return new LvEligibilityResponse(this.a, this.b);
    }
}
