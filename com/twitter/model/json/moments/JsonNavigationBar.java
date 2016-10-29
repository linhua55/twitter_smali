package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.moments.s;
import com.twitter.model.moments.t;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNavigationBar extends b {
    @JsonField
    public List<t> a;
    @JsonField
    public String b;

    public s a() {
        return new s(e.b(this.b), ImmutableList.a(this.a));
    }
}
