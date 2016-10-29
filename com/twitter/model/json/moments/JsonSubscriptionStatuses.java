package com.twitter.model.json.moments;

import clk;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSubscriptionStatuses extends f<clk> {
    @JsonField
    public List<JsonSubscriptionStatus> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public clk a() {
        r a = r.a(this.a.size());
        for (JsonSubscriptionStatus jsonSubscriptionStatus : this.a) {
            a.b(Long.valueOf(jsonSubscriptionStatus.b), Boolean.valueOf(jsonSubscriptionStatus.a));
        }
        return new clk((Map) a.q());
    }
}
