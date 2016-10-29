package defpackage;

import cnn;
import com.twitter.model.core.cm;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cnm */
public class cnm {
    public final List<cm> a;
    public final cno b;

    public cnm(cnn cnn) {
        this.a = cnn.a(cnn);
        this.b = cnn.b(cnn);
    }

    public int hashCode() {
        return ObjectUtils.a(this.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ObjectUtils.a(this.a, ((cnm) obj).a);
    }
}
