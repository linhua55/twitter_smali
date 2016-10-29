package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.e;
import com.twitter.model.search.a;
import com.twitter.model.search.b;
import com.twitter.util.object.f;

@JsonObject
/* compiled from: Twttr */
public class JsonHitHighlight extends e<a> {
    @JsonField
    public int[] a;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonHitHighlight() {
        this.a = new int[]{-1, -1};
    }

    public b a() {
        return (b) ((b) new b().a(this.a[0])).b(this.a[1]);
    }
}
