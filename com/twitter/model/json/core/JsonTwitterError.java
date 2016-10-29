package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ca;
import com.twitter.model.json.common.f;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterError extends f<ca> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public String c;
    @JsonField
    public long d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField(name = {"1fa_eligible_factors"})
    public List<OneFactorEligibleFactor> g;

    public /* synthetic */ Object b() {
        return a();
    }

    public ca a() {
        List list = null;
        if (this.a <= 0) {
            return null;
        }
        int i = this.a;
        String b = e.b(this.c);
        long j = this.d;
        String b2 = e.b(this.e);
        int i2 = this.b;
        String str = this.f;
        if (this.g != null) {
            list = ImmutableList.a(this.g);
        }
        return new ca(i, b, j, b2, i2, str, list);
    }
}
