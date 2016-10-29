package com.twitter.model.json.login;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonOneFactorEligibleFactor extends f<OneFactorEligibleFactor> {
    @JsonField(typeConverter = a.class)
    public FactorType a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public OneFactorEligibleFactor a() {
        if (this.a == null || this.b == null) {
            return null;
        }
        return new OneFactorEligibleFactor(this.a, this.b);
    }
}
