package com.twitter.model.json.timeline.urt;

import cns;
import cnt;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonConversationThread extends f<cnt> {
    @JsonField(name = {"conversationComponents"})
    public List<cns> a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnt a() {
        return new cnt(this.a, this.b);
    }
}
