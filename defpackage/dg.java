package defpackage;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: dg */
public interface dg<INFO> {
    void a(String str);

    void a(String str, Object obj);

    void a(String str, @Nullable INFO info, @Nullable Animatable animatable);

    void a(String str, Throwable th);

    void b(String str, @Nullable INFO info);

    void b(String str, Throwable th);
}
