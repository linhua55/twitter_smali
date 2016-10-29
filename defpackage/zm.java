package defpackage;

import com.twitter.android.SearchFragment;
import com.twitter.android.eventtimelines.g;

/* compiled from: Twttr */
/* renamed from: zm */
class zm implements Runnable {
    final /* synthetic */ SearchFragment a;
    final /* synthetic */ int b;
    final /* synthetic */ zl c;

    zm(zl zlVar, SearchFragment searchFragment, int i) {
        this.c = zlVar;
        this.a = searchFragment;
        this.b = i;
    }

    public void run() {
        ((g) this.a).e(this.b);
    }
}
