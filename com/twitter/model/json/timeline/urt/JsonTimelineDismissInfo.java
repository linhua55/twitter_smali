package com.twitter.model.json.timeline.urt;

import bbn;
import cny;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineDismissInfo extends f<cny> {
    @JsonField(name = {"feedbackActionKey"})
    public String a;
    @JsonField(name = {"feedbackMetadata"})
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cny a() {
        if (this.a != null) {
            return new cny(this.a, this.b);
        }
        bbn.a(new IllegalStateException("A JsonTimelineDismissInfo must have a non-null feedbackActionKey"));
        return null;
    }
}
