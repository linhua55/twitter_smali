package com.twitter.model.json.interestpicker;

import cjh;
import cji;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTopicList extends f<cji> {
    @JsonField
    public int a;
    @JsonField
    public long[] b;
    @JsonField
    public Map<String, JsonTopic> c;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonTopic extends b {
        @JsonField
        public String a;
        @JsonField
        public long b;
        @JsonField
        public String c;
        @JsonField
        public long[] d;
        @JsonField
        public String e;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public cji a() {
        n d = n.d();
        if (this.b != null) {
            for (long a : this.b) {
                cjh a2 = a(a);
                if (a2 != null) {
                    d.c(a2);
                }
            }
        }
        return new cji(this.a, (List) d.q());
    }

    private cjh a(long j) {
        if (this.c != null) {
            JsonTopic jsonTopic = (JsonTopic) this.c.get(String.valueOf(j));
            if (jsonTopic != null) {
                n d = n.d();
                for (long a : jsonTopic.d) {
                    d.c(a(a));
                }
                return new cjh(jsonTopic.a, jsonTopic.b, jsonTopic.c, (List) d.q(), jsonTopic.e);
            }
        }
        return null;
    }
}
