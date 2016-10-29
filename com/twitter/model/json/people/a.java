package com.twitter.model.json.people;

import com.twitter.model.json.common.n;
import com.twitter.model.people.ModuleTitle.Icon;
import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
public class a extends n<Icon> {
    public a() {
        super(Icon.NONE, a());
    }

    private static Map<String, Icon> a() {
        r d = r.d();
        for (Icon icon : Icon.values()) {
            d.b(icon.name(), icon);
        }
        return (Map) d.q();
    }
}
