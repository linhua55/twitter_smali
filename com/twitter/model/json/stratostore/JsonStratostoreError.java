package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.stratostore.g;

@JsonObject
/* compiled from: Twttr */
public class JsonStratostoreError extends f<g> {
    @JsonField
    public int a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public g a() {
        return new g(this.a, this.b);
    }
}
