package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterErrors extends f<cd> {
    @JsonField
    public List<ca> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cd a() {
        return new cd(ImmutableList.a(this.a));
    }
}
