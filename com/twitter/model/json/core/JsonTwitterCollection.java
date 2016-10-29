package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.bz;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterCollection extends f<bz> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public List<cm> c;

    public /* synthetic */ Object b() {
        return a();
    }

    public bz a() {
        return CollectionUtils.b(this.c) ? null : new bz(this.a, this.b, ImmutableList.a(this.c));
    }
}
