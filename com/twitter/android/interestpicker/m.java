package com.twitter.android.interestpicker;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import cgu;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.internal.android.widget.PillToggleButton;
import com.twitter.util.collection.av;
import defpackage.bdn;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: Twttr */
public class m extends bdn<ViewHolder> {
    private final r a;
    private cgu<h> b;

    public m(r rVar) {
        this.b = cgu.f();
        this.a = rVar;
    }

    public void a(cgu<h> cgu_com_twitter_android_interestpicker_h) {
        cgu cgu = this.b;
        if (!cgu.equals(cgu_com_twitter_android_interestpicker_h)) {
            int aU_;
            Set b = b((cgu) cgu_com_twitter_android_interestpicker_h);
            for (aU_ = cgu.aU_() - 1; aU_ >= 0; aU_--) {
                if (!b.contains(f.a((h) cgu.a(aU_)))) {
                    e(aU_);
                }
            }
            Set b2 = b(cgu);
            for (aU_ = 0; aU_ < cgu_com_twitter_android_interestpicker_h.aU_(); aU_++) {
                if (!b2.contains(f.a((h) cgu_com_twitter_android_interestpicker_h.a(aU_)))) {
                    d(aU_);
                }
            }
            this.b = cgu_com_twitter_android_interestpicker_h;
        }
    }

    private static Set<av<String, Long, Long>> b(cgu<h> cgu_com_twitter_android_interestpicker_h) {
        Set<av<String, Long, Long>> hashSet = new HashSet();
        Iterator it = cgu_com_twitter_android_interestpicker_h.iterator();
        while (it.hasNext()) {
            hashSet.add(f.a((h) it.next()));
        }
        return hashSet;
    }

    public ViewHolder a(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 1) {
            return new v((GroupedRowView) from.inflate(2130968933, viewGroup, false));
        }
        if (i == 3) {
            return new t(from.inflate(2130968932, viewGroup, false));
        }
        if (i == 2) {
            return new u(from.inflate(2130968934, viewGroup, false));
        }
        return new s(new PillToggleButton(new ContextThemeWrapper(viewGroup.getContext(), 2131559039)));
    }

    public void a(ViewHolder viewHolder, int i) {
        h b = b(i);
        if (b != null) {
            switch (a(b)) {
                case Util.TYPE_DASH /*0*/:
                    aw awVar = (aw) b;
                    PillToggleButton pillToggleButton = ((s) viewHolder).a;
                    pillToggleButton.setText(awVar.a);
                    pillToggleButton.setChecked(awVar.g);
                    b(awVar, pillToggleButton);
                    pillToggleButton.setOnClickListener(new n(this, pillToggleButton, awVar));
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    ba baVar = (ba) b;
                    v vVar = (v) viewHolder;
                    vVar.b.setText(baVar.a);
                    vVar.c.setChecked(baVar.e);
                    vVar.d.setBadgeNumber(baVar.f);
                    vVar.a.setOnClickListener(new o(this, baVar, vVar));
                case Util.TYPE_OTHER /*3*/:
                    ((t) viewHolder).a.setOnClickListener(new p(this, b));
                default:
            }
        }
    }

    private static void b(aw awVar, PillToggleButton pillToggleButton) {
        if (awVar.g) {
            pillToggleButton.a();
        } else if (awVar.i) {
            pillToggleButton.b();
        } else {
            pillToggleButton.c();
        }
    }

    private void a(long j) {
        if (j != -1) {
            for (int i = 0; i < a(); i++) {
                h b = b(i);
                if ((b instanceof ba) && b.b == j) {
                    c(i);
                    return;
                }
            }
        }
    }

    public int a() {
        return this.b.aU_();
    }

    protected int a(int i) {
        return a(b(i));
    }

    private static int a(h hVar) {
        if (hVar instanceof au) {
            return 3;
        }
        if (hVar instanceof av) {
            return 2;
        }
        if (hVar instanceof ba) {
            return 1;
        }
        return 0;
    }

    public h b(int i) {
        return (h) this.b.a(i);
    }
}
