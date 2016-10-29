package tv.periscope.android.chat;

import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import tv.periscope.model.chat.MessageType.Throttle;

/* compiled from: Twttr */
public class b extends x {
    public b(boolean z, Map<Throttle, j<w>> map) {
        super(z, map, 1000);
    }

    public void a(List<w> list, boolean z, String str) {
        super.a(list, z, str);
        if (list.size() > 0) {
            this.a = b(((w) list.get(list.size() - 1)).a());
        }
    }

    protected long a(long j) {
        return TimeUnit.NANOSECONDS.toMillis(j);
    }

    protected long b(long j) {
        return TimeUnit.MILLISECONDS.toNanos(j);
    }
}
