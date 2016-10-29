package tv.periscope.chatman.model;

import java.util.List;
import tv.periscope.chatman.api.Occupant;

/* compiled from: Twttr */
final class m extends Roster {
    private final List<Occupant> a;

    private m(List<Occupant> list) {
        if (list == null) {
            throw new NullPointerException("Null occupants");
        }
        this.a = list;
    }

    public List<Occupant> a() {
        return this.a;
    }

    public String toString() {
        return "Roster{occupants=" + this.a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Roster)) {
            return false;
        }
        return this.a.equals(((Roster) obj).a());
    }

    public int hashCode() {
        return 1000003 ^ this.a.hashCode();
    }
}
