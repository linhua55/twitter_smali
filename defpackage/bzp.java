package defpackage;

import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: bzp */
public class bzp {
    public final Class<? extends cah> a;
    public final DisplayMode b;

    public bzp(Class<? extends cah> cls, DisplayMode displayMode) {
        this.a = cls;
        this.b = displayMode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !(obj instanceof bzp)) {
            return false;
        }
        bzp bzp = (bzp) obj;
        if (this.a == bzp.a && this.b == bzp.b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b});
    }
}
