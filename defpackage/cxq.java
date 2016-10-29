package defpackage;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

/* compiled from: Twttr */
/* renamed from: cxq */
public class cxq implements cxr {
    public void a(int i, @NonNull String str, @NonNull String str2, @Nullable Throwable th) {
        if (th != null) {
            str2 = str2 + '\n' + Log.getStackTraceString(th);
        }
        Log.println(i, str, str2);
    }
}
