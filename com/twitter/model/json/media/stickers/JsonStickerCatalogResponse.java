package com.twitter.model.json.media.stickers;

import bbn;
import cka;
import ckp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.n;
import ctc;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerCatalogResponse extends f<cka> {
    private static final ctc<ckp, ckp> c;
    @JsonField
    public List<ckp> a;
    @JsonField
    public List<ckp> b;

    public /* synthetic */ Object b() {
        return a();
    }

    static {
        c = new a();
    }

    public cka a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("Sticker response must include categories"));
            return null;
        }
        return new cka(ImmutableList.a(this.a), this.b == null ? n.g() : CollectionUtils.a(this.b, c));
    }
}
