package com.twitter.model.json.timeline.urt;

import cnw;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonClientEventInfo extends f<cnw> {
    @JsonField(name = {"component"})
    public String a;
    @JsonField(name = {"element"})
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnw a() {
        return new cnw(this.a, this.b);
    }
}
