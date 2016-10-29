package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.p;
import com.twitter.util.aj;

@JsonObject
/* compiled from: Twttr */
public class JsonModuleFooter extends f<p> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public p a() {
        if (aj.b(this.a) && aj.b(this.b)) {
            return new p(this.a, this.b);
        }
        return null;
    }
}
