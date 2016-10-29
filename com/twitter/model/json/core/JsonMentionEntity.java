package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ap;
import com.twitter.model.core.aq;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMentionEntity extends e<ap> {
    @JsonField
    public int[] a;
    @JsonField
    public String b;
    @JsonField(name = {"id"})
    public long c;
    @JsonField
    public String d;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonMentionEntity() {
        this.a = new int[]{-1, -1};
    }

    public aq a() {
        return ((aq) ((aq) new aq().a(this.a[0])).b(this.a[1])).a(this.b).a(this.c).b(this.d);
    }
}
