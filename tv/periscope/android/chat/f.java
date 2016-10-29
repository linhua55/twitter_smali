package tv.periscope.android.chat;

import android.annotation.TargetApi;
import java.util.Objects;

@TargetApi(19)
/* compiled from: Twttr */
public class f {
    public final String a;

    public f(String str) {
        this.a = str;
    }

    public boolean a(String str) {
        return Objects.equals(this.a, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.a, ((f) obj).a);
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.a});
    }

    public String toString() {
        return "ChannelInfo{roomId='" + this.a + '\'' + '}';
    }
}
