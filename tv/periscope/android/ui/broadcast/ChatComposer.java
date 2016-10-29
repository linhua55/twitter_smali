package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.StringRes;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import dce;
import defpackage.cse;
import defpackage.dcr;
import defpackage.dda;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.library.i;
import tv.periscope.android.library.j;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.o;
import tv.periscope.android.library.p;
import tv.periscope.android.ui.chat.ChatState;
import tv.periscope.android.ui.chat.aq;
import tv.periscope.android.ui.chat.ar;
import tv.periscope.android.view.MaskImageView;
import tv.periscope.model.chat.Message;

@TargetApi(19)
/* compiled from: Twttr */
public class ChatComposer extends LinearLayout implements OnFocusChangeListener {
    private View a;
    private View b;
    private EditText c;
    private ComposeState d;
    private List<OnFocusChangeListener> e;
    private ar f;
    private aq g;
    private TextView h;
    private Drawable i;
    private Drawable j;
    private ChatState k;
    private Dialog l;
    private TextView m;
    private TextView n;
    private MaskImageView o;
    private View p;
    private View q;
    private dce r;
    private boolean s;
    private Message t;

    /* compiled from: Twttr */
    public enum ComposeState {
        Hidden,
        Close,
        Send
    }

    public ChatComposer(Context context) {
        super(context);
        this.e = new ArrayList();
        this.s = true;
        a(context);
    }

    public ChatComposer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new ArrayList();
        this.s = true;
        a(context);
    }

    public ChatComposer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new ArrayList();
        this.s = true;
        a(context);
    }

    public ChatState getChatState() {
        return this.k;
    }

    public void a(OnFocusChangeListener onFocusChangeListener) {
        this.e.add(onFocusChangeListener);
    }

    public void onFocusChange(View view, boolean z) {
        if (view.getId() == k.compose_comment) {
            if (z) {
                i();
            } else {
                a(true);
            }
        }
        for (int size = this.e.size() - 1; size >= 0; size--) {
            ((OnFocusChangeListener) this.e.get(size)).onFocusChange(view, z);
        }
    }

    public void setImageLoader(dce dce) {
        this.r = dce;
    }

    public void setSendCommentDelegate(ar arVar) {
        this.f = arVar;
    }

    public void setPunishmentStatusDelegate(aq aqVar) {
        this.g = aqVar;
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(m.ps__chat_composer, this, true);
        this.q = findViewById(k.line);
        this.b = findViewById(k.cross);
        this.a = findViewById(k.comment_send_container);
        this.p = findViewById(k.compose_layout);
        this.c = (EditText) findViewById(k.compose_comment);
        this.c.setFilters(new InputFilter[]{new LengthFilter(100)});
        this.j = getResources().getDrawable(j.ps__ic_private);
        if (this.j != null) {
            this.j.setAlpha(cse.AppCompatTheme_checkboxStyle);
        }
        this.o = (MaskImageView) findViewById(k.avatar);
        float dimension = getResources().getDimension(i.ps__card_corner_radius);
        if (dda.a(getContext())) {
            this.o.setCornerRadius(new float[]{0.0f, dimension, dimension, 0.0f});
        } else {
            this.o.setCornerRadius(new float[]{dimension, 0.0f, 0.0f, dimension});
        }
        this.i = getResources().getDrawable(j.ps__bg_chat_overlay);
        this.h = (TextView) findViewById(k.chat_status);
        this.h.setOnClickListener(new t(this));
        findViewById(k.button_container).setOnClickListener(new u(this));
        this.d = ComposeState.Hidden;
        this.c.setOnFocusChangeListener(this);
        this.c.addTextChangedListener(new v(this));
        View inflate = LayoutInflater.from(getContext()).inflate(m.ps__chat_state_dialog, this, false);
        this.m = (TextView) inflate.findViewById(k.title);
        this.n = (TextView) inflate.findViewById(k.message);
        this.l = new Builder(getContext()).setView(inflate).create();
    }

    public void setSendEnabled(boolean z) {
        this.s = z;
    }

    public void a() {
        if (this.d == ComposeState.Hidden) {
            this.b.setVisibility(8);
            this.a.setVisibility(8);
        } else if (this.c.length() <= 0 || !this.s) {
            this.d = ComposeState.Close;
            this.b.setVisibility(0);
            this.a.setVisibility(8);
        } else {
            this.d = ComposeState.Send;
            this.b.setVisibility(8);
            this.a.setVisibility(0);
        }
    }

    private void a(boolean z) {
        this.d = ComposeState.Hidden;
        dcr.a(this.c);
        if (z) {
            c();
        } else {
            this.p.setVisibility(4);
            this.h.setVisibility(0);
        }
        this.a.setVisibility(8);
        this.b.setVisibility(8);
    }

    void b() {
        Animator ofFloat = ObjectAnimator.ofFloat(this.h, View.ALPHA, new float[]{1.0f, 0.0f});
        Animator ofFloat2 = ObjectAnimator.ofFloat(this.p, View.ALPHA, new float[]{0.0f, 1.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.addListener(new w(this));
        animatorSet.start();
    }

    void c() {
        Animator ofFloat = ObjectAnimator.ofFloat(this.h, View.ALPHA, new float[]{0.0f, 1.0f});
        Animator ofFloat2 = ObjectAnimator.ofFloat(this.p, View.ALPHA, new float[]{1.0f, 0.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.addListener(new x(this));
        animatorSet.start();
    }

    private void i() {
        dcr.b(this.c);
        this.d = ComposeState.Close;
        a();
    }

    public void setChatState(ChatState chatState) {
        if (this.k != chatState) {
            this.k = chatState;
            this.h.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
            switch (y.a[chatState.ordinal()]) {
                case p.View_android_focusable /*1*/:
                    this.h.setText(o.ps__broadcast_too_full);
                    this.h.setBackground(null);
                case p.View_paddingStart /*2*/:
                    this.h.setText(o.ps__broadcast_limited);
                    this.h.setBackground(null);
                case p.View_paddingEnd /*3*/:
                    this.h.setText(o.ps__comment_hint);
                    this.h.setBackground(this.i);
                case p.View_theme /*4*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    this.h.setCompoundDrawablesRelativeWithIntrinsicBounds(this.j, null, null, null);
                    this.h.setCompoundDrawablePadding(getResources().getDimensionPixelSize(i.ps__btn_horizontal_padding));
                    this.h.setText("");
                    this.h.setBackground(this.i);
                case p.Toolbar_contentInsetStart /*5*/:
                    this.h.setText(o.ps__connecting);
                    this.h.setBackground(null);
                case p.Toolbar_contentInsetLeft /*7*/:
                    this.h.setText(o.ps__connection_error);
                    this.h.setBackground(null);
                default:
            }
        }
    }

    public void setChatStatus(String str) {
        this.h.setText(str);
    }

    public void d() {
        if (this.l.isShowing()) {
            this.l.dismiss();
        }
    }

    public void e() {
        a(false);
        h();
        this.h.setVisibility(4);
    }

    public void f() {
        g();
        this.h.setVisibility(0);
    }

    private void a(@StringRes int i, @StringRes int i2) {
        this.m.setText(i);
        this.n.setText(i2);
        this.l.show();
    }

    public void setUpReply(String str) {
        if (this.k != ChatState.Disabled && this.k != ChatState.Punished) {
            this.c.setText("");
            this.c.append(str);
            b();
        }
    }

    public void a(String str, @ColorInt int i) {
        this.o.setColorFilter(i);
        this.r.a(getContext(), str, this.o);
    }

    public void g() {
        this.q.setVisibility(0);
    }

    public void h() {
        this.q.setVisibility(4);
    }

    public void setLocalPunishmentPrompt(Message message) {
        this.t = message;
    }
}
