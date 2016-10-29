package com.twitter.moments.core.ui.widget.sectionpager;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.util.collection.z;

/* compiled from: Twttr */
class h extends PagerAdapter implements OnPageChangeListener {
    static final /* synthetic */ boolean a;
    final /* synthetic */ e b;
    private z<Integer, b> c;
    private z<Integer, b> d;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    h(e eVar) {
        this.b = eVar;
    }

    public int getCount() {
        return this.b.b.size();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        b bVar = (b) this.b.b.get(i);
        d a = bVar.c().a();
        this.b.d.a(a.e());
        viewGroup.addView(bVar.a(a).a());
        return bVar;
    }

    public boolean isViewFromObject(View view, Object obj) {
        a a = ((b) obj).a();
        return a != null && a.a() == view;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        b bVar = (b) obj;
        a a = bVar.a();
        if (a != null) {
            View a2 = a.a();
            if (a2.getParent() == viewGroup) {
                viewGroup.removeView(a2);
            }
            if (this.c != null && this.c.b() == bVar) {
                a.c();
            }
            if (this.d != null && this.d.b() == bVar) {
                a.c();
            }
        }
        bVar.b();
        c c = bVar.c();
        if (a || c != null) {
            Object obj2;
            for (b a3 : c.f()) {
                if (a3.a() != null) {
                    obj2 = 1;
                    break;
                }
            }
            obj2 = null;
            if (obj2 == null) {
                this.b.g.a(c);
                this.b.d.removeView(c.b().e());
                c.e();
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (!this.b.b.isEmpty()) {
            a(i, this.c);
            a(i, this.d);
            boolean g = this.b.d();
            z a = a(i, g ? f : -f);
            if (i + 1 < this.b.b.size() && f > 0.0f) {
                this.d = a(i + 1, g ? -1.0f + f : 1.0f - f);
            }
            this.c = a;
        }
    }

    private void a(int i, z<Integer, b> zVar) {
        if (zVar != null) {
            int intValue = ((Integer) zVar.a()).intValue();
            if (intValue != i && intValue != i + 1) {
                a a = ((b) zVar.b()).a();
                if (a != null) {
                    if (intValue < i) {
                        a.a(-1.0f);
                    } else {
                        a.a(1.0f);
                    }
                    a.c();
                }
            }
        }
    }

    private z<Integer, b> a(int i, float f) {
        b bVar = (b) this.b.b.get(i);
        a a = bVar.a();
        if (a == null) {
            return null;
        }
        if ((this.c == null || bVar != this.c.b()) && (this.d == null || bVar != this.d.b())) {
            a.b();
        }
        a.a(f);
        return z.a(Integer.valueOf(i), bVar);
    }

    private boolean b(int i, z<Integer, b> zVar) {
        if (zVar != null) {
            int intValue = ((Integer) zVar.a()).intValue();
            if (intValue != i) {
                a a = ((b) zVar.b()).a();
                if (a != null) {
                    if (intValue < i) {
                        a.a(-1.0f);
                    } else {
                        a.a(1.0f);
                    }
                    a.c();
                }
                return true;
            }
        }
        return false;
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            if (b(this.b.c.getCurrentItem(), this.c)) {
                this.c = null;
            }
            if (b(this.b.c.getCurrentItem(), this.d)) {
                this.d = null;
            }
        }
    }

    public void notifyDataSetChanged() {
        this.c = a(this.c);
        this.d = a(this.d);
        super.notifyDataSetChanged();
    }

    private z<Integer, b> a(z<Integer, b> zVar) {
        if (zVar == null || !this.b.b.contains(zVar.b())) {
            return null;
        }
        return z.a(Integer.valueOf(this.b.b.indexOf(zVar.b())), zVar.b());
    }

    public int getItemPosition(Object obj) {
        int indexOf = this.b.b.indexOf(obj);
        if (indexOf < 0) {
            return -2;
        }
        return indexOf;
    }
}
