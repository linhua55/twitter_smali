package defpackage;

import com.twitter.android.moments.ui.guide.z;
import com.twitter.model.moments.t;
import csu;
import java.util.List;
import rx.an;
import rx.o;

/* compiled from: Twttr */
/* renamed from: aht */
public class aht implements ahr {
    private final csu<ahy> b;
    private final ape<z> c;
    private final o<List<t>> d;
    private final adn e;
    private an f;

    public aht(csu<ahy> csu_ahy, o<List<t>> oVar, ape<z> ape_com_twitter_android_moments_ui_guide_z, adn adn) {
        this.b = csu_ahy;
        this.d = oVar;
        this.c = ape_com_twitter_android_moments_ui_guide_z;
        this.e = adn;
    }

    private static ctc<t, ahy> d() {
        return new ahu();
    }

    private static cyw<List<t>, List<ahy>> e() {
        return new ahv();
    }

    public void a() {
        b();
        this.f = this.d.d(1).g(aht.e()).b(new ahw(this));
    }

    public void b() {
        if (this.f != null) {
            this.f.K_();
            this.f = null;
        }
    }
}
