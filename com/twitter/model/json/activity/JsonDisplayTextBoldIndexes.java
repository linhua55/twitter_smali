package com.twitter.model.json.activity;

import cfu;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonDisplayTextBoldIndexes extends f<cfu> {
    @JsonField
    public List<Integer> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cfu a() {
        return new cfu((Integer) e.b(CollectionUtils.b(this.a), Integer.valueOf(0)), (Integer) e.b(CollectionUtils.c(this.a), Integer.valueOf(0)));
    }
}
