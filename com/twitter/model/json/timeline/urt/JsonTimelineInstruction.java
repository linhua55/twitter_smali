package com.twitter.model.json.timeline.urt;

import cnr;
import coa;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineInstruction extends f<coa> {
    @JsonField(name = {"addEntries"})
    public cnr a;

    public /* synthetic */ Object b() {
        return a();
    }

    public coa a() {
        return this.a;
    }
}
