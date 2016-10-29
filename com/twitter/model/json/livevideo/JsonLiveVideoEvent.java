package com.twitter.model.json.livevideo;

import cjl;
import cjm;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonLiveVideoEvent extends e<cjl> {
    @JsonField
    public long a;
    @JsonField(name = {"start_time"})
    public long b;
    @JsonField(name = {"end_time"})
    public long c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public MediaEntity f;

    public /* synthetic */ f c() {
        return a();
    }

    public cjm a() {
        return new cjm().a(String.valueOf(this.a)).a(this.b).b(this.c).c(this.d).b(this.e).a(this.f);
    }
}
