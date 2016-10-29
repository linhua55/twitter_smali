package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.n;
import com.twitter.model.media.foundmedia.o;
import com.twitter.model.media.foundmedia.r;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonGiphyCategories extends f<n> {
    @JsonField(name = {"data"})
    public List<o> a;
    @JsonField(name = {"pagination"})
    public r b;

    public /* synthetic */ Object b() {
        return a();
    }

    public n a() {
        if (this.a != null && this.b != null) {
            return new n(com.twitter.util.collection.n.a(this.a), this.b);
        }
        bbn.a(new InvalidJsonFormatException("JsonGiphyCategories"));
        return null;
    }
}
