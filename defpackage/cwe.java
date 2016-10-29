package defpackage;

import android.content.Context;
import com.twitter.util.collection.n;
import cwf;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cwe */
public class cwe extends cwf {
    private final Context a;

    public cwe(Context context) {
        this.a = context;
    }

    protected List<String> a(Class<?> cls) {
        try {
            return Arrays.asList(this.a.getAssets().list(cwe.d(cls)));
        } catch (IOException e) {
            return n.g();
        }
    }
}
