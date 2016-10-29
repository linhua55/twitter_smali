package tv.periscope.model;

import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public abstract class ab {
    public abstract String a();

    public abstract String b();

    public abstract List<p> c();

    public static ab a(String str, List<p> list) {
        return new n(str, "", Collections.unmodifiableList(list));
    }

    public static ab b(String str, List<p> list) {
        return new n("", str, Collections.unmodifiableList(list));
    }
}
