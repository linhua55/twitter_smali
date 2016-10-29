package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cg;
import com.twitter.model.core.ci;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterListsResponse extends f<ci> {
    @JsonField
    public String a;
    @JsonField
    public List<cg> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ci a() {
        return new ci(ImmutableList.a(this.b), this.a);
    }
}
