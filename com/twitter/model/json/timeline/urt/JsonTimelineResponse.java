package com.twitter.model.json.timeline.urt;

import bbn;
import cnu;
import cnv;
import cod;
import cof;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineResponse extends e<cod> {
    @JsonField(name = {"globalObjects"})
    public cnu a;
    @JsonField(name = {"timeline"})
    public cnv b;

    public /* synthetic */ f c() {
        return a();
    }

    public cof a() {
        if (this.a != null && this.b != null) {
            return new cof().a(this.a).a(this.b);
        }
        bbn.a(new IllegalStateException(String.format("A JsonTimelineResponse must have non-nullGlobalObjects and Timeline fields. GlobalObjects: %s, Timeline: %s", new Object[]{this.a, this.b})));
        return null;
    }
}
