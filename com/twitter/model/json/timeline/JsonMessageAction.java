package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.o;

@JsonObject
/* compiled from: Twttr */
public class JsonMessageAction extends f<o> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public boolean c;

    public /* synthetic */ Object b() {
        return a();
    }

    public o a() {
        if (this.a != null) {
            return new o(this.a, this.b, this.c);
        }
        return null;
    }
}
