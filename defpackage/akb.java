package defpackage;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: akb */
public class akb {
    private akd a;
    private ItemTouchHelper b;

    public static akb a() {
        return new akb(new akc());
    }

    public akb(b<akd, ItemTouchHelper> bVar) {
        this.a = new akd();
        this.b = (ItemTouchHelper) bVar.a(this.a);
    }

    public void a(RecyclerView recyclerView) {
        this.b.attachToRecyclerView(recyclerView);
    }

    public void a(ake ake) {
        this.a.a(ake);
    }
}
