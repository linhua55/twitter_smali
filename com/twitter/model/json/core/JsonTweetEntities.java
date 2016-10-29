package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.j;
import com.twitter.model.core.q;
import com.twitter.model.core.z;
import com.twitter.model.json.common.e;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTweetEntities extends e<bg> {
    @JsonField
    public List<cr> a;
    @JsonField
    public List<MediaEntity> b;
    @JsonField
    public List<ap> c;
    @JsonField
    public List<q> d;
    @JsonField
    public List<b> e;

    public /* synthetic */ f c() {
        return a();
    }

    public bi a() {
        return new bi().a(j.a(ImmutableList.a(this.a))).a(z.b(ImmutableList.a(this.b))).b(j.a(ImmutableList.a(this.c))).c(j.a(ImmutableList.a(this.d))).d(j.a(ImmutableList.a(this.e)));
    }
}
