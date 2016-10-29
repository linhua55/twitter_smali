package defpackage;

import android.content.Context;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: ahz */
public class ahz {
    private final View a;

    public ahz(View view) {
        this.a = view;
    }

    public View a() {
        return this.a;
    }

    public static ahz a(Context context) {
        return new ahz(new View(context));
    }
}
