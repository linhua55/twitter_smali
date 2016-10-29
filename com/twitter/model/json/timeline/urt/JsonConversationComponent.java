package com.twitter.model.json.timeline.urt;

import cns;
import coi;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.aa;

@JsonObject
/* compiled from: Twttr */
public class JsonConversationComponent extends f<cns> {
    @JsonField
    public coi a;
    @JsonField
    public aa b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cns a() {
        if (this.a != null) {
            return this.a;
        }
        return this.b;
    }
}
