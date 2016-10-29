package tv.periscope.android.chat;

import java.util.List;

/* compiled from: Twttr */
public class EventHistory {
    public final long a;
    public final String b;
    public final String c;
    private final List<w> d;
    private final boolean e;

    public EventHistory(List<w> list, boolean z, long j, String str, String str2) {
        this.d = list;
        this.e = z;
        this.a = j;
        this.b = str;
        this.c = str2;
    }

    public List<w> a() {
        return this.d;
    }

    public boolean b() {
        return this.e;
    }
}
