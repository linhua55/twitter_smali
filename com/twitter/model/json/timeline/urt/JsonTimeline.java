package com.twitter.model.json.timeline.urt;

import bbn;
import cnv;
import coa;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonTimeline extends f<cnv> {
    @JsonField(name = {"id"})
    public String a;
    @JsonField(name = {"instructions"})
    public List<coa> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnv a() {
        if (this.a != null && this.b != null) {
            return new cnv(this.a, ImmutableList.a(this.b));
        }
        bbn.a(new IllegalStateException(String.format("A JsonTimeline must have a non-null id and list of timeline instructions. ID: %s, List<TimelineInstruction>: %s", new Object[]{this.a, this.b})));
        return null;
    }
}
