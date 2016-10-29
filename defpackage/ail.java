package defpackage;

import android.support.v7.widget.RecyclerView.ViewHolder;
import com.twitter.model.moments.viewmodels.MomentPage;

/* compiled from: Twttr */
/* renamed from: ail */
public class ail implements ake {
    private final amx<MomentPage, aim> a;
    private final aiu b;

    public ail(amx<MomentPage, aim> amx_com_twitter_model_moments_viewmodels_MomentPage__aim, aiu aiu) {
        this.a = amx_com_twitter_model_moments_viewmodels_MomentPage__aim;
        this.b = aiu;
    }

    public void a(ViewHolder viewHolder, ViewHolder viewHolder2) {
        int adapterPosition = viewHolder.getAdapterPosition();
        int adapterPosition2 = viewHolder2.getAdapterPosition();
        this.b.a(adapterPosition, adapterPosition2);
        this.a.notifyItemMoved(adapterPosition, adapterPosition2);
    }

    public void b(ViewHolder viewHolder, ViewHolder viewHolder2) {
    }
}
