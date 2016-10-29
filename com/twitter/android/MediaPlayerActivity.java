package com.twitter.android;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.twitter.android.composer.aw;
import com.twitter.android.widget.MediaPlayerView;
import com.twitter.android.widget.ch;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.az;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.manager.am;
import com.twitter.library.media.manager.an;
import com.twitter.library.media.player.InlineVideoView;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.aq;
import com.twitter.library.vineloops.VineLoopAggregator;
import com.twitter.library.vineloops.c;
import com.twitter.library.widget.TweetView;
import com.twitter.media.model.MediaDescriptor;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import defpackage.amo;
import defpackage.amp;
import defpackage.bca;
import defpackage.ccc;
import defpackage.cdg;
import defpackage.cgl;
import java.util.ArrayList;
import java.util.concurrent.Future;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaPlayerActivity extends TwitterFragmentActivity implements amo, LoaderCallbacks<Cursor>, OnClickListener, bo, ch {
    protected MediaPlayerView a;
    private LinearLayout b;
    private InlineVideoView c;
    private ProgressBar d;
    private MediaImageView e;
    private TweetView f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private Tweet l;
    private TwitterScribeAssociation m;
    private Uri n;
    private Animation o;
    private Animation p;
    private boolean q;
    private String r;
    private amp s;
    private Future<?> t;
    private MediaActionBarFragment u;

    public MediaPlayerActivity() {
        this.q = true;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130968985);
        a.a(false);
        a.c(false);
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        Object obj;
        Intent intent = getIntent();
        this.h = intent.getBooleanExtra("aud", false);
        this.j = intent.getBooleanExtra("simple_controls", false);
        this.m = (TwitterScribeAssociation) intent.getParcelableExtra("association");
        this.l = (Tweet) intent.getParcelableExtra("tweet");
        this.n = ck.b(this.l.H, ab().g());
        boolean z = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getBoolean("media_forward", true) && (this.l.L() || be.d(this.l));
        this.k = z;
        String stringExtra = intent.getStringExtra("player_url");
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("player_stream_urls");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.size() <= 0) {
            obj = null;
        } else {
            obj = Uri.parse(((MediaDescriptor) parcelableArrayListExtra.get(0)).a);
        }
        this.d = (ProgressBar) findViewById(2131952471);
        this.a = (MediaPlayerView) findViewById(2131952706);
        this.a.setUseSimplePlayPauseControls(this.j);
        this.a.setProgressBar(this.d);
        this.f = (TweetView) findViewById(2131953049);
        this.f.setHideInlineActions(true);
        this.f.setTweet(this.l);
        this.f.setVisibility(8);
        this.a.a((ImageButton) findViewById(2131952709), findViewById(2131952708));
        this.c = (InlineVideoView) findViewById(2131952707);
        this.i = aq.d(stringExtra);
        if (this.i) {
            this.r = stringExtra;
        }
        this.b = (LinearLayout) findViewById(2131952710);
        AnimationListener bnVar = new bn(this);
        this.o = AnimationUtils.loadAnimation(this, 2131034158);
        this.o.setAnimationListener(bnVar);
        this.o.setFillAfter(true);
        this.o.setDuration(150);
        this.p = AnimationUtils.loadAnimation(this, 2131034160);
        this.p.setAnimationListener(bnVar);
        this.p.setFillAfter(true);
        this.p.setDuration(150);
        if (this.i) {
            b(String.valueOf(obj));
            this.u = MediaActionBarFragment.a(this, 2131951923, this.m, "tweet", BuildConfig.VERSION_NAME, "tweet");
            this.b.setOnClickListener(this);
        } else {
            this.a.a(parcelableArrayListExtra, intent.getIntExtra("video_index", 0), intent.getIntExtra("video_position", 0));
            this.a.setIsLooping(intent.getBooleanExtra("is_looping", false));
            this.a.setMediaControllerListener(this);
        }
        String stringExtra2 = intent.getStringExtra("image_url");
        if (aj.b((CharSequence) stringExtra2)) {
            MediaImageView mediaImageView = (MediaImageView) findViewById(2131952356);
            mediaImageView.setVisibility(0);
            if (this.h) {
                mediaImageView.setScaleType(ScaleType.CENTER_INSIDE);
            } else {
                mediaImageView.setScaleType(ScaleType.FIT);
            }
            mediaImageView.a(a.a(stringExtra2));
            this.e = mediaImageView;
        }
        if (bundle != null) {
            this.g = bundle.getInt("seek", 0);
        }
        if (this.n != null) {
            getSupportLoaderManager().initLoader(1, null, this);
        }
        f();
    }

    public void onClick(View view) {
        a(!this.q);
    }

    public boolean a(w wVar) {
        if (!super.a(wVar)) {
            return false;
        }
        if (this.k && !io.a()) {
            wVar.a(2132017176);
        }
        wVar.a(2132017162);
        return true;
    }

    public int b(w wVar) {
        boolean z;
        boolean z2 = true;
        int b = super.b(wVar);
        ToolBar j = wVar.j();
        if (this.l.b == ab().g()) {
            z = true;
        } else {
            z = false;
        }
        bca a = j.a(2131953427);
        if (!z || this.l.c || this.u == null) {
            z2 = false;
        }
        a.b(z2);
        return b;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        cgl aa = this.l.aa();
        String c = aa != null ? aa.c() : BuildConfig.VERSION_NAME;
        if (a == 2131953460) {
            startActivity(aw.a().a(c, null).b(ab().e()).a((Context) this));
            return true;
        }
        if (a == 2131953427) {
            showDialog(1);
        }
        return super.a(acVar);
    }

    protected Dialog onCreateDialog(int i) {
        return MediaActionBarFragment.a((TwitterFragmentActivity) this, this.l, i);
    }

    private void b(String str) {
        this.s = new amp(this);
        this.s.a(this.c);
        this.t = O().e().f(((an) am.a(str).a(new jz(this))).a());
    }

    protected void onResume() {
        super.onResume();
        if (this.g > 0) {
            if (!this.i) {
                this.a.setStartPosition(this.g);
            }
            this.g = 0;
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        int currentPosition;
        super.onSaveInstanceState(bundle);
        if (this.i) {
            currentPosition = this.c.getCurrentPosition();
        } else {
            currentPosition = this.a.getCurrentPosition();
        }
        this.g = currentPosition;
        bundle.putInt("seek", currentPosition);
    }

    protected void onPause() {
        super.onPause();
        if (this.i) {
            this.c.pause();
        } else {
            this.a.pause();
        }
    }

    protected void onStop() {
        if (this.s != null) {
            int a = this.s.a();
            if (a > 0) {
                VineLoopAggregator.a((Context) this).a(this.r, a);
                c.a(getApplicationContext(), az.a(getApplicationContext())).a();
            }
        }
        super.onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.t != null) {
            this.t.cancel(true);
            this.t = null;
        }
        if (this.i) {
            this.c.a();
        } else {
            this.a.f();
        }
        this.s = null;
        this.b.setOnSystemUiVisibilityChangeListener(null);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            finish();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean onSearchRequested() {
        return false;
    }

    public void b(int i) {
        com.twitter.util.c.b(this.b);
        X().d();
    }

    public void c() {
        X().e();
        com.twitter.util.c.a(this.b);
    }

    public void ae_() {
        this.d.setVisibility(8);
        if (!(this.h || this.e == null)) {
            this.e.setVisibility(8);
        }
        if (this.i) {
            this.a.setVisibility(8);
            this.c.setVisibility(0);
            this.c.start();
            return;
        }
        this.a.setVisibility(0);
        if (this.c != null) {
            this.c.setVisibility(8);
        }
    }

    public void c(int i) {
        this.d.setVisibility(8);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Toast.makeText(this, 2131363045, 1).show();
            case WireMessage.WIRE_AUTH /*3*/:
                Toast.makeText(this, 2131363043, 1).show();
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                Toast.makeText(this, 2131363033, 1).show();
            default:
                Toast.makeText(this, 2131363044, 1).show();
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this, this.n, cdg.b, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            this.l = ccc.a.a(cursor);
            if (this.u != null) {
                this.u.a(this.l);
            }
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void a(boolean z) {
        if (this.q != z) {
            if (z) {
                this.b.startAnimation(this.o);
            } else {
                this.b.startAnimation(this.p);
            }
            this.q = z;
        }
    }

    private void f() {
        if (VERSION.SDK_INT < 19) {
            this.b.setOnSystemUiVisibilityChangeListener(new kb(this));
        }
    }

    public void a(int i) {
        if (i == 0) {
            X().d();
        } else {
            X().e();
        }
        ViewGroup viewGroup = this.b;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility(i);
            }
        }
    }

    public Animation a() {
        return this.o;
    }

    public Animation b() {
        return this.p;
    }

    public void e() {
    }
}
