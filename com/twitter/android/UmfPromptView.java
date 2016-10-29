package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.OnLongClickListener;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.c;
import com.twitter.config.AppConfig;
import com.twitter.library.network.an;
import com.twitter.library.view.o;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.bg;
import com.twitter.model.timeline.s;
import com.twitter.ui.view.p;
import com.twitter.ui.widget.PromptView;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.bcu;

/* compiled from: Twttr */
public class UmfPromptView extends PromptView implements OnLongClickListener {
    protected s a;
    private final wj d;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public boolean a;
        public s b;

        static {
            CREATOR = new wk();
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = (s) ab.a(parcel, s.a);
            this.a = parcel.readInt() == 1;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            ab.a(parcel, this.b, s.a);
            parcel.writeInt(this.a ? 1 : 0);
        }
    }

    public UmfPromptView(Context context) {
        this(context, null);
    }

    public UmfPromptView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UmfPromptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new wj();
        if (AppConfig.m().p()) {
            setOnLongClickListener(this);
        }
        p.a(getPromptSubtitle());
        p.a(getPromptHeader());
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = this.a;
        savedState.a = this.b;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.b = savedState.a;
    }

    public boolean d() {
        if (this.a == null) {
            return true;
        }
        if (this.c == null) {
            return false;
        }
        Time time = new Time();
        Time time2 = new Time(this.c);
        time2.second += this.a.j;
        time2.normalize(false);
        time.setToNow();
        return time.after(time2);
    }

    public void a(s sVar) {
        this.b = true;
        this.a = sVar;
        setTitle(a(this.a.e, this.a.m));
        setSubtitle(a(this.a.b, this.a.l));
        setButtonText(this.a.f);
        MediaImageView mediaImageView = (MediaImageView) getIconView();
        if (aj.b(sVar.k)) {
            mediaImageView.setScaleType(ScaleType.c);
            mediaImageView.a(a.a(sVar.k));
            mediaImageView.setVisibility(0);
            getPromptHeader().setVisibility(8);
        } else {
            mediaImageView.a(null);
            mediaImageView.setVisibility(8);
            getPromptHeader().setVisibility(0);
        }
        setVisibility(0);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.b && this.a != null) {
            c.a(getContext()).a(this.a.c);
            this.c = new Time();
            this.c.setToNow();
            this.b = false;
        }
    }

    public void e() {
        super.e();
        this.a = null;
    }

    private CharSequence a(String str, bg bgVar) {
        int color = getContext().getResources().getColor(bcu.link_selected);
        if (bgVar != null) {
            return o.a((CharSequence) str).a(bgVar).a(this.d).b(color).a();
        }
        return str;
    }

    protected void a() {
        Context context = getContext();
        c a = c.a(context);
        if (this.a != null) {
            Object obj = this.a.g;
            if (aj.b(obj)) {
                OpenUriHelper.a(context, null, obj.trim(), com.twitter.library.client.bg.a().c().g(), null, null, null, true);
            }
            a.b(this.a.c);
        }
        f();
        super.a();
    }

    protected void b() {
        if (this.a != null) {
            c.a(getContext().getApplicationContext()).c(this.a.c);
            this.a.k();
        }
        super.b();
    }

    public boolean onLongClick(View view) {
        s sVar = this.a;
        if (sVar == null) {
            return false;
        }
        int i;
        Context context = view.getContext();
        PackageManager packageManager = context.getPackageManager();
        try {
            i = packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            i = 0;
        }
        String str = "\n\n--- User agent ---\n\n" + an.a(context).e + "\n\n--- Prompt ---\n\n" + sVar;
        Intent putExtra = new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str).putExtra("android.intent.extra.SUBJECT", "Debug: Android v" + i + ", " + "prompt id " + sVar.c).putExtra("android.intent.extra.EMAIL", new String[]{"promptbird@twitter.com"});
        if (!packageManager.queryIntentActivities(putExtra, 65536).isEmpty()) {
            context.startActivity(putExtra);
        }
        return true;
    }
}
