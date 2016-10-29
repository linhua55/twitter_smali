package tv.periscope.android.ui.chat;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.SimpleItemAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class k extends SimpleItemAnimator {
    private ArrayList<r> a;
    private ArrayList<r> b;
    private ArrayList<q> c;
    private ArrayList<ArrayList<r>> d;
    private ArrayList<ArrayList<r>> e;
    private ArrayList<ArrayList<q>> f;
    private ArrayList<ViewHolder> g;
    private ArrayList<ViewHolder> h;
    private ArrayList<ViewHolder> i;

    public k() {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
    }

    public void runPendingAnimations() {
        Object obj;
        Object obj2 = 1;
        Object obj3 = !this.b.isEmpty() ? 1 : null;
        if (this.c.isEmpty()) {
            obj = null;
        } else {
            obj = 1;
        }
        if (this.a.isEmpty()) {
            obj2 = null;
        }
        if (obj3 != null || obj2 != null || obj != null) {
            if (!(obj2 == null && obj3 == null)) {
                ArrayList arrayList = new ArrayList();
                Object arrayList2 = new ArrayList();
                Object arrayList3 = new ArrayList();
                if (obj3 != null) {
                    arrayList3.addAll(this.b);
                    arrayList.addAll(arrayList3);
                    this.e.add(arrayList3);
                    this.b.clear();
                }
                if (obj2 != null) {
                    arrayList2.addAll(this.a);
                    arrayList.addAll(arrayList2);
                    this.d.add(arrayList2);
                    this.a.clear();
                }
                new l(this, arrayList, arrayList3, arrayList2).run();
            }
            if (obj != null) {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.addAll(this.c);
                this.f.add(arrayList4);
                this.c.clear();
                new m(this, arrayList4).run();
            }
        }
    }

    public boolean animateRemove(ViewHolder viewHolder) {
        dispatchRemoveFinished(viewHolder);
        return false;
    }

    public boolean animateAdd(ViewHolder viewHolder) {
        endAnimation(viewHolder);
        float translationY = ViewCompat.getTranslationY(viewHolder.itemView);
        int height = viewHolder.itemView.getHeight();
        int i = ((int) translationY) + height;
        int i2 = (int) translationY;
        ViewCompat.setTranslationY(viewHolder.itemView, (float) height);
        r rVar = new r(0, i, 0, i2, null);
        rVar.f = true;
        this.a.add(rVar);
        return true;
    }

    public boolean animateMove(ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = (int) (((float) i) + ViewCompat.getTranslationX(viewHolder.itemView));
        int translationY = (int) (((float) i2) + ViewCompat.getTranslationY(viewHolder.itemView));
        endAnimation(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            ViewCompat.setTranslationX(view, (float) (-i5));
        }
        if (i6 != 0) {
            ViewCompat.setTranslationY(view, (float) (-i6));
        }
        this.b.add(new r(translationX, translationY, i3, i4, null));
        return true;
    }

    private void a(r rVar) {
        ViewHolder viewHolder = rVar.a;
        int i = rVar.b;
        int i2 = rVar.c;
        int i3 = rVar.d;
        int i4 = rVar.e;
        View view = viewHolder.itemView;
        int i5 = i3 - i;
        i4 -= i2;
        if (i5 != 0) {
            ViewCompat.animate(view).translationX(0.0f);
        }
        if (i4 != 0) {
            ViewCompat.animate(view).translationY(0.0f);
        }
        if (rVar.f) {
            this.g.add(viewHolder);
        } else {
            this.h.add(viewHolder);
        }
        ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
        animate.setDuration(getMoveDuration()).setListener(new n(this, rVar, viewHolder, i5, i4, animate)).start();
    }

    public boolean animateChange(ViewHolder viewHolder, ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i, i2, i3, i4);
        }
        float translationX = ViewCompat.getTranslationX(viewHolder.itemView);
        float translationY = ViewCompat.getTranslationY(viewHolder.itemView);
        float alpha = ViewCompat.getAlpha(viewHolder.itemView);
        endAnimation(viewHolder);
        int i5 = (int) (((float) (i3 - i)) - translationX);
        int i6 = (int) (((float) (i4 - i2)) - translationY);
        ViewCompat.setTranslationX(viewHolder.itemView, translationX);
        ViewCompat.setTranslationY(viewHolder.itemView, translationY);
        ViewCompat.setAlpha(viewHolder.itemView, alpha);
        if (viewHolder2 != null) {
            endAnimation(viewHolder2);
            ViewCompat.setTranslationX(viewHolder2.itemView, (float) (-i5));
            ViewCompat.setTranslationY(viewHolder2.itemView, (float) (-i6));
            ViewCompat.setAlpha(viewHolder2.itemView, 0.0f);
            this.c.add(new q(viewHolder2, i, i2, i3, i4, viewHolder.itemView.getWidth(), viewHolder2.itemView.getWidth(), null));
            return true;
        }
        dispatchChangeFinished(viewHolder, true);
        return false;
    }

    private void a(q qVar) {
        View view = qVar.a.itemView;
        ViewHolder viewHolder = qVar.b;
        View view2 = viewHolder != null ? viewHolder.itemView : null;
        this.i.add(qVar.a);
        ViewPropertyAnimatorCompat duration = ViewCompat.animate(view).setDuration(getChangeDuration());
        duration.translationX((float) (qVar.e - qVar.c));
        duration.translationY((float) (qVar.f - qVar.d));
        if (qVar.h != qVar.g) {
            view.setPivotX(0.0f);
            view.setPivotY(0.0f);
            duration.scaleX(((float) qVar.h) / ((float) qVar.g));
        }
        duration.alpha(0.0f).setListener(new o(this, qVar, duration)).start();
        if (view2 != null) {
            this.i.add(qVar.b);
            ViewPropertyAnimatorCompat animate = ViewCompat.animate(view2);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new p(this, qVar, animate, view2)).start();
        }
    }

    private void a(List<q> list, ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            q qVar = (q) list.get(size);
            if (a(qVar, viewHolder) && qVar.a == null && qVar.b == null) {
                list.remove(qVar);
            }
        }
    }

    private void b(q qVar) {
        if (qVar.a != null) {
            a(qVar, qVar.a);
        }
        if (qVar.b != null) {
            a(qVar, qVar.b);
        }
    }

    private boolean a(q qVar, ViewHolder viewHolder) {
        boolean z = false;
        if (qVar.b == viewHolder) {
            qVar.b = null;
        } else if (qVar.a != viewHolder) {
            return false;
        } else {
            qVar.a = null;
            z = true;
        }
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
        ViewCompat.setTranslationX(viewHolder.itemView, 0.0f);
        ViewCompat.setTranslationY(viewHolder.itemView, 0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    public void endAnimation(ViewHolder viewHolder) {
        int size;
        int size2;
        View view = viewHolder.itemView;
        ViewCompat.animate(view).cancel();
        for (size = this.b.size() - 1; size >= 0; size--) {
            if (((r) this.b.get(size)).a == viewHolder) {
                ViewCompat.setTranslationY(view, 0.0f);
                ViewCompat.setTranslationX(view, 0.0f);
                dispatchMoveFinished(viewHolder);
                this.b.remove(size);
            }
        }
        a(this.c, viewHolder);
        for (size = this.a.size() - 1; size >= 0; size--) {
            if (((r) this.a.get(size)).a == viewHolder) {
                this.a.remove(size);
                ViewCompat.setTranslationY(view, 0.0f);
                dispatchAddFinished(viewHolder);
            }
        }
        for (size = this.f.size() - 1; size >= 0; size--) {
            List list = (ArrayList) this.f.get(size);
            a(list, viewHolder);
            if (list.isEmpty()) {
                this.f.remove(list);
            }
        }
        for (size2 = this.e.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.e.get(size2);
            int size3 = arrayList.size() - 1;
            while (size3 >= 0) {
                if (((r) arrayList.get(size3)).a == viewHolder) {
                    ViewCompat.setTranslationY(view, 0.0f);
                    ViewCompat.setTranslationX(view, 0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList.remove(size3);
                    if (arrayList.isEmpty()) {
                        this.e.remove(arrayList);
                    }
                } else {
                    size3--;
                }
            }
        }
        for (size2 = this.d.size() - 1; size2 >= 0; size2--) {
            arrayList = (ArrayList) this.d.get(size2);
            for (size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                if (((r) arrayList.get(size3)).a == viewHolder) {
                    arrayList.remove(size3);
                    ViewCompat.setTranslationY(view, 0.0f);
                    dispatchAddFinished(viewHolder);
                    if (arrayList.isEmpty()) {
                        this.d.remove(arrayList);
                    }
                }
            }
        }
        if (this.g.remove(viewHolder)) {
        }
        if (this.i.remove(viewHolder)) {
        }
        if (this.h.remove(viewHolder)) {
            a();
        } else {
            a();
        }
    }

    public boolean isRunning() {
        return (this.a.isEmpty() && this.c.isEmpty() && this.b.isEmpty() && this.h.isEmpty() && this.g.isEmpty() && this.i.isEmpty() && this.e.isEmpty() && this.d.isEmpty() && this.f.isEmpty()) ? false : true;
    }

    private void a() {
        if (!isRunning()) {
            dispatchAnimationsFinished();
        }
    }

    public void endAnimations() {
        int size;
        for (size = this.b.size() - 1; size >= 0; size--) {
            r rVar = (r) this.b.get(size);
            View view = rVar.a.itemView;
            ViewCompat.setTranslationY(view, 0.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            dispatchMoveFinished(rVar.a);
            this.b.remove(size);
        }
        for (size = this.a.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = ((r) this.a.get(size)).a;
            ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
            dispatchAddFinished(viewHolder);
            this.a.remove(size);
        }
        for (size = this.c.size() - 1; size >= 0; size--) {
            b((q) this.c.get(size));
        }
        this.c.clear();
        if (isRunning()) {
            int size2;
            ArrayList arrayList;
            int size3;
            for (size2 = this.e.size() - 1; size2 >= 0; size2--) {
                arrayList = (ArrayList) this.e.get(size2);
                for (size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    r rVar2 = (r) arrayList.get(size3);
                    View view2 = rVar2.a.itemView;
                    ViewCompat.setTranslationY(view2, 0.0f);
                    ViewCompat.setTranslationX(view2, 0.0f);
                    dispatchMoveFinished(rVar2.a);
                    arrayList.remove(size3);
                    if (arrayList.isEmpty()) {
                        this.e.remove(arrayList);
                    }
                }
            }
            for (size2 = this.d.size() - 1; size2 >= 0; size2--) {
                arrayList = (ArrayList) this.d.get(size2);
                for (size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    ViewHolder viewHolder2 = ((r) arrayList.get(size3)).a;
                    ViewCompat.setAlpha(viewHolder2.itemView, 1.0f);
                    dispatchAddFinished(viewHolder2);
                    arrayList.remove(size3);
                    if (arrayList.isEmpty()) {
                        this.d.remove(arrayList);
                    }
                }
            }
            for (size2 = this.f.size() - 1; size2 >= 0; size2--) {
                arrayList = (ArrayList) this.f.get(size2);
                for (size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    b((q) arrayList.get(size3));
                    if (arrayList.isEmpty()) {
                        this.f.remove(arrayList);
                    }
                }
            }
            a(this.h);
            a(this.g);
            a(this.i);
            dispatchAnimationsFinished();
        }
    }

    void a(List<ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ViewCompat.animate(((ViewHolder) list.get(size)).itemView).cancel();
        }
    }
}
