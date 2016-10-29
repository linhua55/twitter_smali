package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.os.Handler;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.recyclerview.BuildConfig;
import android.util.AttributeSet;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.commerce.util.ImageHelper;
import com.twitter.android.commerce.util.ImageHelper.Image;
import com.twitter.android.commerce.util.ImageHelper.Image.AnimationType;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.f;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.ac;
import com.twitter.util.aj;
import java.util.Calendar;
import java.util.List;

/* compiled from: Twttr */
public class CardEntryContainer extends HorizontalScrollView implements OnGestureListener, OnClickListener, OnTouchListener, f {
    public final TextView a;
    public final CardNumber b;
    public final CardExpiration c;
    public final CardCCV d;
    public final InternationalCardZip e;
    private ImageView f;
    private ImageView g;
    private AnimationType h;
    private View i;
    private TextView j;
    private State k;
    private CardEntryBase l;
    private boolean m;
    private boolean n;
    private boolean o;
    private CreditCard p;

    public CardEntryContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = State.a;
        View.inflate(context, 2130968676, this);
        setHorizontalScrollBarEnabled(false);
        setOnTouchListener(this);
        setSmoothScrollingEnabled(true);
        this.a = (TextView) findViewById(2131952082);
        this.a.setGravity(17);
        this.a.setImeOptions(268435456);
        this.a.setBackgroundColor(getResources().getColor(17170445));
        this.b = (CardNumber) findViewById(2131952081);
        this.c = (CardExpiration) findViewById(2131952083);
        this.d = (CardCCV) findViewById(2131952084);
        this.e = (InternationalCardZip) findViewById(2131952085);
        this.b.setDelegate(this);
        this.c.setDelegate(this);
        this.d.setDelegate(this);
        this.e.setDelegate(this);
        b(false);
    }

    public CreditCard getPartialCard() {
        return this.p;
    }

    public void setPartialCard(CreditCard creditCard) {
        this.p = creditCard;
        this.b.setVisibility(8);
        this.a.setVisibility(0);
        this.a.setText(creditCard.b());
        a(this.p.a());
        b(true);
        setFocus(this.c);
    }

    public void a() {
        this.p = null;
        b();
        this.b.setVisibility(0);
        this.a.setVisibility(8);
        a(Type.INVALID);
        setFocus(this.b);
    }

    public void b() {
        this.b.setText(BuildConfig.VERSION_NAME);
        this.c.setText(BuildConfig.VERSION_NAME);
        this.d.setText(BuildConfig.VERSION_NAME);
        this.e.setText(BuildConfig.VERSION_NAME);
    }

    public boolean c() {
        return this.p != null;
    }

    public void onClick(View view) {
        k();
    }

    public CardEntryContainer(Context context) {
        this(context, null);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return true;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    public void onLongPress(MotionEvent motionEvent) {
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public void a(Type type) {
        Image a = ImageHelper.a(type);
        this.f.setImageResource(a.a());
        this.g.setImageResource(a.b());
        this.h = a.c();
        a(false);
    }

    public void d() {
        if (this.n) {
            View nextExternalView = getNextExternalView();
            if (nextExternalView != null) {
                nextExternalView.requestFocus();
            }
            if (this.o) {
                c.a(getContext(), this.b);
                return;
            }
            return;
        }
        b(true);
        setFocus(this.c);
    }

    public void e() {
        setFocus(this.d);
    }

    public void f() {
        setFocus(this.e);
    }

    public void g() {
    }

    public void a(CardEntryBase cardEntryBase) {
        int currentTextColor = cardEntryBase.getCurrentTextColor();
        cardEntryBase.setTextColor(SupportMenu.CATEGORY_MASK);
        if (cardEntryBase.getLastError() != 0) {
            cardEntryBase.setError(getResources().getString(cardEntryBase.getLastError()));
        }
        if (currentTextColor != SupportMenu.CATEGORY_MASK) {
            new Handler().postDelayed(new b(this, cardEntryBase, currentTextColor), 1000);
        }
    }

    public void a(boolean z) {
        if (this.m != z) {
            if (this.h == AnimationType.b) {
                i();
            } else if (this.h == AnimationType.a) {
                h();
            }
        }
        this.m = z;
    }

    public void h() {
        if (this.f.getVisibility() == 8) {
            this.f.setVisibility(0);
            this.g.setVisibility(8);
            return;
        }
        this.f.setVisibility(8);
        this.g.setVisibility(0);
    }

    public void i() {
        f fVar = new f(this.f, this.g, this.g.getWidth() / 2, this.g.getHeight() / 2);
        if (this.f.getVisibility() == 8) {
            fVar.a();
        }
        this.f.startAnimation(fVar);
    }

    public void setFocus(CardEntryBase cardEntryBase) {
        if (cardEntryBase != this.l) {
            cardEntryBase.setFocusable(false);
            if (this.j != null) {
                this.j.setText(cardEntryBase.getHelperText());
            }
            if (cardEntryBase == this.b && this.k != State.b) {
                setCurrentState(State.b);
                new c(this, 300, 5, (long) computeHorizontalScrollOffset(), cardEntryBase).start();
            } else if (cardEntryBase == this.b || this.k == State.c) {
                b(cardEntryBase);
                e(cardEntryBase);
            } else {
                setCurrentState(State.c);
                this.b.post(new d(this, cardEntryBase));
            }
            this.l = cardEntryBase;
            if (cardEntryBase.getClass().equals(CardCCV.class)) {
                ((CardCCV) cardEntryBase).setType(getCurrentType());
                a(true);
                return;
            }
            a(false);
        }
    }

    private Type getCurrentType() {
        if (c()) {
            return this.p.a();
        }
        return this.b.getType();
    }

    private void b(CardEntryBase cardEntryBase) {
        if (cardEntryBase.getVisibility() == 4) {
            cardEntryBase.setVisibility(0);
        }
    }

    public boolean j() {
        return c(this.d) || c(this.c) || c(this.e);
    }

    private boolean c(CardEntryBase cardEntryBase) {
        if (cardEntryBase.getVisibility() != 0 || !aj.b(cardEntryBase.getError())) {
            return false;
        }
        e(cardEntryBase);
        return true;
    }

    private void d(CardEntryBase cardEntryBase) {
        String obj = this.b.getText().toString();
        if (obj.length() > 4) {
            obj = obj.substring(obj.length() - 4);
        }
        int width = this.b.getWidth() - (((int) this.b.getPaint().measureText(obj)) + this.b.getPaddingRight());
        b(cardEntryBase);
        new e(this, 300, 5, width, cardEntryBase).start();
    }

    private void e(CardEntryBase cardEntryBase) {
        cardEntryBase.setFocusable(true);
        cardEntryBase.setFocusableInTouchMode(false);
        cardEntryBase.requestFocusFromTouch();
    }

    private void setCurrentState(State state) {
        this.k = state;
    }

    public void setFocusToPrevious(CardEntryBase cardEntryBase) {
        if (cardEntryBase == this.c && !c()) {
            setFocus(this.b);
        } else if (cardEntryBase == this.d) {
            setFocus(this.c);
        } else if (cardEntryBase == this.e) {
            setFocus(this.d);
        }
    }

    public void a(ImageView imageView, ImageView imageView2) {
        this.f = imageView;
        this.g = imageView2;
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
    }

    public void setPanOnly(boolean z) {
        this.n = z;
    }

    public void setPanHintResource(int i) {
        this.b.setHintResource(i);
    }

    public void setDismissKeyboardOnComplete(boolean z) {
        this.o = z;
    }

    public void setSupportedCardTypes(List<Type> list) {
        this.b.setSupportedCardTypes(list);
    }

    public TextView getTextHelper() {
        return this.j;
    }

    public void setTextHelper(TextView textView) {
        this.j = textView;
    }

    public com.twitter.library.commerce.model.f getCreditCard() {
        com.twitter.library.commerce.model.f fVar;
        if (c()) {
            com.twitter.library.commerce.model.f acVar = new ac();
            acVar.a(getCurrentType(), this.p.b());
            acVar.d(this.p.i());
            fVar = acVar;
        } else {
            fVar = new com.twitter.library.commerce.model.f();
            fVar.c((String) this.b.getData());
        }
        Calendar calendar = (Calendar) this.c.getData();
        if (calendar != null) {
            fVar.a(Integer.valueOf(calendar.get(2) + 1));
            fVar.b(Integer.valueOf(calendar.get(1)));
        }
        fVar.b((String) this.d.getData());
        fVar.a((String) this.e.getData());
        return fVar;
    }

    public String getCardNumber() {
        return this.b.getText().toString();
    }

    public void b(boolean z) {
        this.c.setClickable(z);
        this.c.setLongClickable(z);
        this.c.setFocusable(z);
        this.c.setFocusableInTouchMode(z);
        this.c.setCursorVisible(z);
        this.d.setClickable(z);
        this.d.setLongClickable(z);
        this.d.setFocusable(z);
        this.d.setFocusableInTouchMode(z);
        this.d.setCursorVisible(z);
        this.e.setClickable(z);
        this.e.setLongClickable(z);
        this.e.setFocusable(z);
        this.e.setFocusableInTouchMode(z);
        this.e.setCursorVisible(z);
    }

    public void k() {
        setFocus(this.b);
        this.b.requestFocus();
    }

    public View getNextExternalView() {
        return this.i;
    }

    public void setNextExternalView(View view) {
        this.i = view;
    }
}
