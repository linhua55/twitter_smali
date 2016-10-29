package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.b;
import com.twitter.model.media.foundmedia.c;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonFoundMediaData extends f<b> {
    @JsonField
    public List<c> a;
    @JsonField
    public List<com.twitter.model.media.foundmedia.f> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public b a() {
        return new b(ImmutableList.a(this.a), ImmutableList.a(this.b));
    }
}
