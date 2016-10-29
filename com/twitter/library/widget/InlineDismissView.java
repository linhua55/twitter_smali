package com.twitter.library.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import bcx;
import com.twitter.model.timeline.i;
import com.twitter.model.timeline.l;
import com.twitter.util.ab;
import defpackage.bcy;
import java.util.List;

/* compiled from: Twttr */
public class InlineDismissView extends ViewSwitcher {
    private final s a;
    private ViewGroup b;
    private TextView c;
    private l d;
    private i e;
    private r f;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        final l a;
        final i b;

        static {
            CREATOR = new t();
        }

        SavedState(Parcelable parcelable, l lVar, i iVar) {
            super(parcelable);
            this.a = lVar;
            this.b = iVar;
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = (l) ab.a(parcel, l.a);
            this.b = (i) ab.a(parcel, i.a);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            ab.a(parcel, this.a, l.a);
            ab.a(parcel, this.b, i.a);
        }
    }

    public InlineDismissView(Context context) {
        super(context, null);
        this.a = new s();
        a(context);
    }

    public InlineDismissView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new s();
        a(context);
    }

    private void a(Context context) {
        inflate(context, bcy.inline_dismiss_view_content, this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (ViewGroup) findViewById(bcx.feedback_items);
        this.c = (TextView) findViewById(bcx.confirmation_text);
        View findViewById = findViewById(bcx.undo_feeback);
        if (findViewById != null) {
            findViewById.setOnClickListener(new u());
        }
        a();
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.d, this.e);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.d = savedState.a;
        this.e = savedState.b;
        if (this.d == null) {
            a();
        } else {
            setCurrentFeedbackAction(this.e);
        }
    }

    public void setDismissListener(r rVar) {
        this.f = rVar;
    }

    public void setDismissInfo(l lVar) {
        if (lVar == null) {
            a();
        } else if (!lVar.a(this.d)) {
            this.d = lVar;
            setCurrentFeedbackAction(lVar.b);
        }
    }

    public void setCurrentFeedbackAction(i iVar) {
        if (this.d == null) {
            return;
        }
        if (iVar == null || this.d.b.a(iVar)) {
            this.e = null;
            a(this.d);
        } else if (this.d.c.contains(iVar)) {
            this.e = iVar;
            c(iVar);
        }
    }

    private void a() {
        this.e = null;
        this.d = null;
        setDisplayedChild(0);
    }

    private void a(l lVar) {
        a(lVar.b);
        a(lVar.c);
    }

    private void a(i iVar) {
        setDisplayedChild(1);
        setConfirmationText(iVar);
    }

    private void setConfirmationText(i iVar) {
        if (this.c != null) {
            CharSequence charSequence = iVar.d;
            this.c.setText(charSequence);
            this.c.setContentDescription(charSequence);
        }
    }

    private void a(List<i> list) {
        if (this.b != null) {
            int size = list.size();
            a(size);
            for (int i = 0; i < this.b.getChildCount(); i++) {
                View childAt = this.b.getChildAt(i);
                if (i < size) {
                    i iVar = (i) list.get(i);
                    TextView textView = (TextView) childAt.findViewById(bcx.feedback_text);
                    CharSequence charSequence = iVar.c;
                    textView.setText(charSequence);
                    textView.setContentDescription(charSequence);
                    childAt.setTag(iVar);
                    childAt.setVisibility(0);
                } else {
                    childAt.setVisibility(8);
                    childAt.setTag(null);
                }
            }
            this.b.setVisibility(0);
        }
    }

    private void a(int i) {
        if (this.b != null) {
            for (int childCount = this.b.getChildCount(); childCount < i; childCount++) {
                this.b.addView(b());
            }
        }
    }

    private View b() {
        View inflate = inflate(getContext(), bcy.inline_dismiss_item, null);
        inflate.setVisibility(8);
        inflate.setOnClickListener(this.a);
        return inflate;
    }

    private void b(i iVar) {
        e(iVar);
        this.e = iVar;
        c(iVar);
    }

    private void c(i iVar) {
        a(iVar);
        if (this.b != null) {
            this.b.setVisibility(8);
        }
    }

    private void d(i iVar) {
        f(iVar);
        this.e = null;
        if (this.d != null) {
            a(this.d);
        }
    }

    private void e(i iVar) {
        if (this.f != null) {
            this.f.a(this, iVar);
        }
    }

    private void f(i iVar) {
        if (this.f != null) {
            this.f.b(this, iVar);
        }
    }

    private void c() {
        if (this.f != null && this.d != null) {
            this.f.c(this, this.d.b);
        }
    }
}
