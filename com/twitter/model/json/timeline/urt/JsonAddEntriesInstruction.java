package com.twitter.model.json.timeline.urt;

import cnr;
import cnz;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonAddEntriesInstruction extends f<cnr> {
    @JsonField(name = {"entries"})
    public List<cnz> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnr a() {
        return new cnr(ImmutableList.a(this.a));
    }
}
