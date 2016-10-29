package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.ColorInt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import defpackage.dce;
import java.util.List;
import tv.periscope.android.library.i;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.p;
import tv.periscope.android.ui.broadcast.moderator.ModeratorView;
import tv.periscope.android.ui.broadcast.moderator.j;
import tv.periscope.android.ui.chat.ChatMessageContainerView;
import tv.periscope.android.ui.chat.ChatState;
import tv.periscope.android.ui.chat.aq;
import tv.periscope.android.ui.chat.ar;
import tv.periscope.android.ui.chat.e;
import tv.periscope.android.ui.love.HeartContainerView;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
public class ChannelView extends RelativeLayout implements OnFocusChangeListener {
    private View a;
    private HeartContainerView b;
    private ChatMessageContainerView c;
    private View[] d;
    private View e;
    private TextView f;
    private ChatComposer g;
    private View h;
    private ModeratorView i;
    private Animator j;
    private Animator k;
    private Animator l;
    private Animator m;
    private Message n;
    private final Runnable o;
    private boolean p;
    private int q;
    private OnTouchListener r;
    private boolean s;
    private final j t;

    public ChannelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = new n(this);
        this.p = true;
        this.q = 1;
        this.s = true;
        this.t = new o(this);
        a(context, attributeSet);
    }

    public ChannelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new n(this);
        this.p = true;
        this.q = 1;
        this.s = true;
        this.t = new o(this);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(m.ps__channel_view, this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.ChannelView);
        this.p = obtainStyledAttributes.getBoolean(p.ChannelView_ps__includeComposer, true);
        this.q = obtainStyledAttributes.getInt(p.ChannelView_ps__heartsMarginFactor, 1);
        obtainStyledAttributes.recycle();
        this.a = findViewById(k.chat_container);
        this.b = (HeartContainerView) findViewById(k.hearts_view);
        this.c = (ChatMessageContainerView) findViewById(k.chat_messages_view);
        this.e = findViewById(k.participants);
        this.f = (TextView) this.e.findViewById(k.num_people_text);
        this.d = new View[2];
        this.d[0] = this.b;
        this.d[1] = this.e;
        this.h = findViewById(k.moderator_overlay);
        if (this.p) {
            View inflate = ((ViewStub) findViewById(k.composer_moderator_container)).inflate();
            this.g = (ChatComposer) inflate.findViewById(k.compose_comment_container);
            this.g.a(this);
            this.i = (ModeratorView) inflate.findViewById(k.moderator_view);
            this.j = d(500);
            this.l = b(500);
            this.m = c(500);
            this.k = a(500);
        }
        k();
    }

    public View[] getRightAlignedViews() {
        return this.d;
    }

    public void setOnInterceptTouchEventListener(OnTouchListener onTouchListener) {
        this.r = onTouchListener;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.r != null) {
            this.r.onTouch(null, motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setHeartsMarginFactor(int i) {
        this.q = i;
        k();
    }

    private void k() {
        int i;
        if (this.p && this.g.getVisibility() == 0) {
            i = 0;
        } else {
            i = getResources().getDimensionPixelOffset(i.ps__standard_spacing_16);
        }
        LayoutParams layoutParams = (LayoutParams) this.c.getLayoutParams();
        layoutParams.bottomMargin = i;
        LayoutParams layoutParams2 = (LayoutParams) this.b.getLayoutParams();
        layoutParams2.bottomMargin = i * this.q;
        this.c.setLayoutParams(layoutParams);
        this.b.setLayoutParams(layoutParams2);
    }

    public void setChatAlpha(float f) {
        this.b.setAlpha(f);
        this.c.setAlpha(f);
    }

    public void setChatMessageAdapter(e eVar) {
        this.c.setChatMessageAdapter(eVar);
    }

    public void setImageLoader(dce dce) {
        this.b.setImageLoader(dce);
        if (this.p) {
            this.g.setImageLoader(dce);
        }
    }

    public void a(String str, List<String> list) {
        this.b.a(str, list);
    }

    public void a(boolean z) {
        this.s = true;
        this.c.setVisibility(0);
        this.b.setVisibility(0);
        if (!this.p) {
            return;
        }
        if (z) {
            d();
        } else {
            e();
        }
    }

    public void a() {
        this.s = false;
        this.c.setVisibility(8);
        this.b.setVisibility(8);
        if (this.p) {
            e();
        }
    }

    public void a(@ColorInt int i, boolean z) {
        this.b.a(i, z);
    }

    public void b(@ColorInt int i, boolean z) {
        this.b.b(i, z);
    }

    public void setLocalPunishmentPrompt(Message message) {
        if (this.p) {
            this.g.setLocalPunishmentPrompt(message);
        }
    }

    public void a(Message message) {
        this.c.a(message);
    }

    public void b() {
        this.c.b();
    }

    public void c() {
        this.c.a();
    }

    public void setChatState(ChatState chatState) {
        if (this.p) {
            this.g.setChatState(chatState);
        }
    }

    public void a(String str, @ColorInt int i) {
        if (this.p) {
            this.g.a(str, i);
        }
    }

    public void d() {
        if (this.p) {
            this.g.setVisibility(0);
            this.g.f();
            k();
        }
    }

    public void e() {
        if (this.p) {
            this.g.e();
            this.g.d();
            this.g.setVisibility(8);
            k();
        }
    }

    public void setUpComposerReply(String str) {
        if (this.p) {
            this.g.setUpReply(str);
        }
    }

    public void f() {
        if (this.p) {
            this.g.e();
        }
    }

    public void g() {
        setComposerSendEnabled(true);
    }

    private void setComposerSendEnabled(boolean z) {
        if (this.p) {
            this.g.setSendEnabled(z);
            this.g.a();
        }
    }

    public void h() {
        setComposerSendEnabled(false);
    }

    void setSendCommentDelegate(ar arVar) {
        if (this.p) {
            this.g.setSendCommentDelegate(arVar);
        }
    }

    void setPunishmentStatusDelegate(aq aqVar) {
        if (this.p) {
            this.g.setPunishmentStatusDelegate(aqVar);
        }
    }

    public void setParticipantClickListener(OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    public void setParticipantCount(String str) {
        this.f.setText(str);
    }

    public void setMutualCount(int i) {
    }

    public void i() {
        this.e.setVisibility(0);
    }

    public void j() {
        this.e.setVisibility(8);
    }

    public void onFocusChange(View view, boolean z) {
        if (view.getId() != k.compose_comment) {
            return;
        }
        if (z) {
            j();
        } else {
            i();
        }
    }

    public void setModeratorSelectionListener(tv.periscope.android.ui.broadcast.moderator.i iVar) {
        if (this.p) {
            this.i.setModeratorSelectionListener(iVar);
        }
    }

    private Animator a(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.h, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.g, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.e, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.a, View.TRANSLATION_Y, new float[]{(float) this.g.getMeasuredHeight(), 0.0f});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4});
        animatorSet.addListener(new p(this, ofFloat4));
        return animatorSet;
    }

    private Animator b(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.h, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.g, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.e, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.a, View.TRANSLATION_Y, new float[]{0.0f, (float) this.g.getMeasuredHeight()});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4});
        animatorSet.addListener(new q(this, ofFloat4));
        return animatorSet;
    }

    private Animator c(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.h, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.e, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.a, View.TRANSLATION_Y, new float[]{0.0f, (float) (this.g.getMeasuredHeight() + this.i.getInfo().getMeasuredHeight())});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
        animatorSet.addListener(new r(this, ofFloat3));
        return animatorSet;
    }

    private Animator d(int i) {
        Animator ofFloat = ObjectAnimator.ofFloat(this.i, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.g, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.e, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.a, View.TRANSLATION_Y, new float[]{(float) this.g.getMeasuredHeight(), (float) (this.g.getMeasuredHeight() + this.i.getInfoContainer().getMeasuredHeight())});
        ofFloat.setDuration((long) i);
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat4, ofFloat2, ofFloat3});
        animatorSet.addListener(new s(this, ofFloat4));
        return animatorSet;
    }

    private void l() {
        if (this.n != null) {
            this.c.a(this.n);
            this.n = null;
        }
    }
}
