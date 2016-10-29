package com.twitter.model.json.notifications;

import cnc;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonPushDeviceErrorResponse extends f<cnc> {
    @JsonField
    public List<Error> a;

    @JsonObject
    /* compiled from: Twttr */
    public class Error extends b {
        @JsonField(name = {"code"})
        public int a;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public cnc a() {
        boolean z;
        int i = 0;
        if (CollectionUtils.b(this.a)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = ((Error) this.a.get(0)).a;
        }
        return new cnc(z, i);
    }
}
