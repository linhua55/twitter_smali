package com.twitter.model.json.moments;

import clc;
import clj;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentPivotResponse extends f<clj> {
    @JsonField
    public List<clc> a;
    @JsonField
    public long b;

    public /* synthetic */ Object b() {
        return a();
    }

    public clj a() {
        return this.a != null ? new clj(ImmutableList.a(this.a), this.b) : null;
    }
}
