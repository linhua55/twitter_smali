package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import com.twitter.android.moments.ui.guide.z;
import com.twitter.model.moments.t;
import csu;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ahq */
public class ahq implements aho {
    private final LayoutInflater b;
    private final o<List<t>> c;
    private final ape<z> d;
    private final adn e;

    public ahq(LayoutInflater layoutInflater, o<List<t>> oVar, ape<z> ape_com_twitter_android_moments_ui_guide_z, adn adn) {
        this.b = layoutInflater;
        this.c = oVar;
        this.d = ape_com_twitter_android_moments_ui_guide_z;
        this.e = adn;
    }

    public ahr a(RecyclerView recyclerView) {
        return new aht(csu.a(this.b, recyclerView), this.c, this.d, this.e);
    }

    public ahr b(RecyclerView recyclerView) {
        return new aht(csu.b(this.b, recyclerView), this.c, this.d, this.e);
    }
}
