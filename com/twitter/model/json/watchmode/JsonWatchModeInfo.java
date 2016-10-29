package com.twitter.model.json.watchmode;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.ab;
import com.twitter.model.av.ac;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonWatchModeInfo extends f<ab> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public List<cm> c;
    @JsonField
    public List<JsonWatchModeSectionStatusMetadata> d;

    public /* synthetic */ Object b() {
        return a();
    }

    public ab a() {
        ac acVar = new ac();
        acVar.b(this.a).a(this.b).a(this.c);
        if (!this.d.isEmpty()) {
            Map hashMap = new HashMap();
            for (JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata : this.d) {
                hashMap.put(Long.valueOf(jsonWatchModeSectionStatusMetadata.a), jsonWatchModeSectionStatusMetadata.a());
            }
            acVar.a(hashMap);
        }
        return (ab) acVar.q();
    }

    public boolean c() {
        return aj.b(this.a) && aj.b(this.b) && this.c != null && this.d != null;
    }
}
