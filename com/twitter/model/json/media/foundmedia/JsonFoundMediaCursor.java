package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.a;
import com.twitter.util.object.e;

@JsonObject
/* compiled from: Twttr */
public class JsonFoundMediaCursor extends f<a> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public a a() {
        return new a(e.b(this.a), e.b(this.b));
    }
}
