package defpackage;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;
import com.twitter.app.common.inject.m;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: amx */
public class amx<Item, ItemController extends m & amv<Item>> extends Adapter<amy<ItemController>> {
    private final amz<Item> a;
    private final amw<Item, ItemController> b;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((amy) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public /* synthetic */ void onViewRecycled(ViewHolder viewHolder) {
        a((amy) viewHolder);
    }

    public amx(amz<Item> amz_Item, amw<Item, ItemController> amw_Item__ItemController) {
        this.a = amz_Item;
        this.b = amw_Item__ItemController;
    }

    public int getItemViewType(int i) {
        return this.a.a(this.a.b(i));
    }

    public amy<ItemController> a(ViewGroup viewGroup, int i) {
        return new amy((m) this.b.a(viewGroup, this.a.b(i)));
    }

    public void a(amy<ItemController> amy_ItemController, int i) {
        ((amv) amy_ItemController.a).a(this.a.b(i));
    }

    public void a(amy<ItemController> amy_ItemController) {
        Object obj = amy_ItemController.a;
        if (obj instanceof amu) {
            ((amu) ObjectUtils.a(obj)).a();
        }
    }

    public int getItemCount() {
        return this.a.a();
    }
}
