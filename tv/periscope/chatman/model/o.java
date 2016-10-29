package tv.periscope.chatman.model;

import java.util.List;
import tv.periscope.chatman.api.Occupant;

/* compiled from: Twttr */
final class o extends u {
    private List<Occupant> a;

    o() {
    }

    public u a(List<Occupant> list) {
        this.a = list;
        return this;
    }

    public Roster a() {
        String str = "";
        if (this.a == null) {
            str = str + " occupants";
        }
        if (str.isEmpty()) {
            return new m(null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
