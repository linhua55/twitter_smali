package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.r;

@JsonObject
/* compiled from: Twttr */
public class JsonGiphyPagination extends f<r> {
    @JsonField(name = {"total_count"})
    public int a;
    @JsonField(name = {"count"})
    public int b;
    @JsonField(name = {"offset"})
    public int c;

    public /* synthetic */ Object b() {
        return a();
    }

    public r a() {
        return new r(this.a, this.c, this.b);
    }
}
