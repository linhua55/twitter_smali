package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.DynamicAdMediaInfo;
import com.twitter.model.av.VideoCta;
import com.twitter.model.core.am;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaInfo extends f<DynamicAdMediaInfo> {
    @JsonField
    public String a;
    @JsonField
    public long b;
    @JsonField
    public VideoCta c;
    @JsonField
    public long d;
    @JsonField
    public List<am> e;

    public /* synthetic */ Object b() {
        return a();
    }

    public DynamicAdMediaInfo a() {
        return new DynamicAdMediaInfo(this.a, this.b, ImmutableList.a(this.e), this.c);
    }
}
