package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.d;
import com.twitter.model.av.i;
import com.twitter.model.json.common.b;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.r;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonVideoAdResponse extends b {
    @JsonField
    public List<i> a;
    @JsonField
    public List<d> b;
    @JsonField
    public List<String> c;

    private Map<Long, String> b() {
        if (this.b == null) {
            return Collections.emptyMap();
        }
        r d = r.d();
        for (d dVar : this.b) {
            if (dVar != null) {
                d.b(Long.valueOf(dVar.b), dVar.a);
            }
        }
        return (Map) d.q();
    }

    private Map<Long, DynamicAd> c() {
        if (this.a == null) {
            return Collections.emptyMap();
        }
        r d = r.d();
        for (i iVar : this.a) {
            if (iVar != null) {
                d.b(Long.valueOf(iVar.b), iVar.a);
            }
        }
        return (Map) d.q();
    }

    public Map<Long, DynamicAdInfo> a() {
        if (this.a == null && this.b == null) {
            return Collections.emptyMap();
        }
        Map b = b();
        Map c = c();
        ar d = ar.d();
        d.b(b.keySet());
        d.b(c.keySet());
        Set<Long> set = (Set) d.q();
        r d2 = r.d();
        for (Long l : set) {
            if (b.containsKey(l) || c.containsKey(l)) {
                d2.b(l, new DynamicAdInfo((DynamicAd) c.get(l), (String) b.get(l)));
            }
        }
        return (Map) d2.q();
    }
}
