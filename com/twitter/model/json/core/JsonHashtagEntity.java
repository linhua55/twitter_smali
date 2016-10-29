package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.core.q;
import com.twitter.model.core.r;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject
/* compiled from: Twttr */
public class JsonHashtagEntity extends e<q> {
    @JsonField
    public int[] a;
    @JsonField
    public String b;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonHashtagEntity() {
        this.a = new int[]{-1, -1};
    }

    public r a() {
        return ((r) ((r) new r().a(this.a[0])).b(this.a[1])).a(this.b);
    }
}
