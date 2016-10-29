package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.p;
import com.twitter.model.media.foundmedia.q;
import com.twitter.model.media.foundmedia.r;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonGiphyImages extends f<q> {
    @JsonField(name = {"data"})
    public List<p> a;
    @JsonField(name = {"pagination"})
    public r b;

    public /* synthetic */ Object b() {
        return a();
    }

    public q a() {
        if (this.a != null && this.b != null) {
            return new q(n.a(this.a), this.b);
        }
        bbn.a(new InvalidJsonFormatException("JsonGiphyImages"));
        return null;
    }
}
