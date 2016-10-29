package defpackage;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.helper.ItemTouchHelper.SimpleCallback;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: akd */
public class akd extends SimpleCallback {
    private ViewHolder a;
    private ViewHolder b;
    private ake c;

    akd() {
        super(15, 0);
    }

    public void a(ake ake) {
        this.c = ake;
    }

    public boolean onMove(RecyclerView recyclerView, ViewHolder viewHolder, ViewHolder viewHolder2) {
        this.a = viewHolder;
        this.b = viewHolder2;
        ake ake = this.c;
        if (ake != null) {
            ake.a(viewHolder, viewHolder2);
        }
        return true;
    }

    public void onSelectedChanged(ViewHolder viewHolder, int i) {
        super.onSelectedChanged(viewHolder, i);
        ake ake = this.c;
        if (i == 0) {
            if (ake != null) {
                e.a(this.a);
                e.a(this.b);
                ake.b(this.a, this.b);
            }
        } else if (i == 2) {
            this.a = null;
            this.b = null;
        }
    }

    public void onSwiped(ViewHolder viewHolder, int i) {
    }
}
