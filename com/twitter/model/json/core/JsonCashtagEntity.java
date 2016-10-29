package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.core.b;
import com.twitter.model.core.c;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject
/* compiled from: Twttr */
public class JsonCashtagEntity extends e<b> {
    @JsonField
    public int[] a;
    @JsonField
    public String b;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonCashtagEntity() {
        this.a = new int[]{-1, -1};
    }

    public c a() {
        return ((c) ((c) new c().a(this.a[0])).b(this.a[1])).a(this.b);
    }
}
