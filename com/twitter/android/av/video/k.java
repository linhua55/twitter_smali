package com.twitter.android.av.video;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.CallSuper;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import bdj;
import bqk;
import com.twitter.android.av.bd;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.au;
import com.twitter.library.client.r;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.util.object.e;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public abstract class k<ActivityWithListenerRegistry extends Activity & s> extends r implements OnClickListener, a {
    private final WeakReference<ActivityWithListenerRegistry> a;
    private final OnClickListener b;
    protected h e;
    protected final ViewGroup f;
    protected final AVDataSource g;
    protected final bd h;
    protected final TwitterScribeAssociation i;

    public abstract void a();

    public abstract void a(bqk bqk, Mode mode);

    public abstract void b();

    public k(ActivityWithListenerRegistry activityWithListenerRegistry, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, bd bdVar, OnClickListener onClickListener) {
        this.a = new WeakReference(activityWithListenerRegistry);
        this.f = viewGroup;
        this.h = bdVar;
        this.i = twitterScribeAssociation;
        this.g = aVDataSource;
        this.b = onClickListener;
    }

    public OnClickListener l() {
        return (OnClickListener) e.b(this.b, this);
    }

    @CallSuper
    public void a(h hVar) {
        this.e = hVar;
    }

    protected ActivityWithListenerRegistry m() {
        return (Activity) this.a.get();
    }

    public AVPlayerAttachment k() {
        return null;
    }

    public boolean c() {
        return false;
    }

    public au aR_() {
        return au.a;
    }

    public au aS_() {
        return au.a;
    }

    public au h() {
        return au.a;
    }

    public void onClick(View view) {
        j();
    }

    protected void j() {
        Context m = m();
        if (m != null) {
            this.h.a(this.i).a(this.g).b(true).e(bdj.a(m).k()).a(m);
        }
    }

    public View i() {
        return this.f;
    }
}
