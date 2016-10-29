package defpackage;

import bx;
import com.facebook.cache.common.a;
import com.facebook.imagepipeline.common.c;
import java.util.Locale;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* compiled from: Twttr */
/* renamed from: dy */
public class dy implements a {
    private final String a;
    @Nullable
    private final c b;
    private final boolean c;
    private final com.facebook.imagepipeline.common.a d;
    @Nullable
    private final a e;
    @Nullable
    private final String f;
    private final int g;

    public dy(String str, @Nullable c cVar, boolean z, com.facebook.imagepipeline.common.a aVar, @Nullable a aVar2, @Nullable String str2) {
        this.a = (String) bx.a(str);
        this.b = cVar;
        this.c = z;
        this.d = aVar;
        this.e = aVar2;
        this.f = str2;
        this.g = com.facebook.common.util.a.a(Integer.valueOf(str.hashCode()), Integer.valueOf(cVar != null ? cVar.hashCode() : 0), Integer.valueOf(z ? Boolean.TRUE.hashCode() : Boolean.FALSE.hashCode()), this.d, this.e, str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof dy)) {
            return false;
        }
        dy dyVar = (dy) obj;
        if (this.g == dyVar.g && this.a.equals(dyVar.a) && bt.a(this.b, dyVar.b) && this.c == dyVar.c && bt.a(this.d, dyVar.d) && bt.a(this.e, dyVar.e) && bt.a(this.f, dyVar.f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.g;
    }

    @Nullable
    public String a() {
        return this.f;
    }

    public String toString() {
        return String.format((Locale) null, "%s_%s_%s_%s_%s_%s_%d", new Object[]{this.a, this.b, Boolean.toString(this.c), this.d, this.e, this.f, Integer.valueOf(this.g)});
    }
}
