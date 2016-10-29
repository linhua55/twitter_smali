package com.twitter.android.autocomplete;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.CallSuper;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.Html;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.KeyEvent;
import bct;
import bdd;
import com.twitter.ui.widget.TwitterEditText;
import defpackage.cgu;
import defpackage.cun;
import defpackage.sw;
import java.io.Closeable;
import to;
import tp;

/* compiled from: Twttr */
public abstract class SuggestionEditText<T, S> extends TwitterEditText implements n<T, S> {
    private final int a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final int e;
    private h<T, S> f;
    private f<T, S> g;
    private e h;
    private b i;
    private to<T> j;
    private g<T, S> k;
    private boolean l;
    private T m;
    private d<T> n;
    private c o;

    protected abstract boolean a(T t, cgu<S> cgu_S);

    protected SuggestionEditText(Context context) {
        this(context, null);
    }

    protected SuggestionEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.suggestionEditTextStyle);
    }

    public SuggestionEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.SuggestionEditText, i, 0);
        this.a = obtainStyledAttributes.getInt(bdd.SuggestionEditText_lengthThreshold, 1);
        this.b = obtainStyledAttributes.getBoolean(bdd.SuggestionEditText_focusOnDismiss, false);
        this.c = obtainStyledAttributes.getBoolean(bdd.SuggestionEditText_removePastedStyles, false);
        this.d = obtainStyledAttributes.getBoolean(bdd.SuggestionEditText_stripHtml, false);
        this.e = obtainStyledAttributes.getDimensionPixelSize(bdd.SuggestionEditText_cursorBottomPadding, 0);
        this.l = obtainStyledAttributes.getBoolean(bdd.SuggestionEditText_autoRefresh, true);
        obtainStyledAttributes.recycle();
    }

    public void setSelectionChangeListener(e eVar) {
        this.h = eVar;
    }

    public void setKeyPreImeListener(b bVar) {
        this.i = bVar;
    }

    public void setSuggestionListener(f<T, S> fVar) {
        this.g = fVar;
    }

    public void setQueryTransformer(d<T> dVar) {
        this.n = dVar;
    }

    public void setCopyTransformer(c cVar) {
        this.o = cVar;
    }

    public void setTokenizer(to<T> toVar) {
        this.j = toVar;
    }

    public void setSuggestionProvider(sw<T, S> swVar) {
        if (this.f != null) {
            this.f.a();
            this.f = null;
        }
        if (swVar != null) {
            this.f = new h(swVar, this);
        }
    }

    public void setSuggestionStringConverter(g<T, S> gVar) {
        this.k = gVar;
    }

    public boolean a(boolean z) {
        boolean z2 = this.l;
        if (this.l != z) {
            this.l = z;
            if (this.l) {
                b();
            }
        }
        return z2;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    protected void onSelectionChanged(int i, int i2) {
        if (this.h != null) {
            this.h.a(i, i2);
        }
    }

    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        return (this.i != null && this.i.a(i, keyEvent)) || super.onKeyPreIme(i, keyEvent);
    }

    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.l) {
            b();
        }
        super.onTextChanged(charSequence, i, i2, i3);
    }

    public void b() {
        if (this.j != null && this.f != null) {
            int selectionEnd = getSelectionEnd();
            if (selectionEnd >= 0) {
                Object b = this.j.b(getText(), selectionEnd);
                if (!(b == null || this.n == null)) {
                    b = this.n.a(b);
                }
                if (b == null || (this.a != 0 && b.toString().length() < this.a)) {
                    c();
                } else {
                    this.f.a(b);
                }
            }
        }
    }

    public void b(T t, cgu<S> cgu_S) {
        if (cgu_S.aU_() <= 0) {
            cun.a((Closeable) cgu_S);
            c();
        } else if (a((Object) t, (cgu) cgu_S)) {
            this.m = t;
            if (this.g != null) {
                this.g.a(t, cgu_S);
            }
        }
    }

    public void c() {
        if (this.f != null) {
            this.f.a();
        }
        if (a(null, cgu.f())) {
            this.m = null;
            if (this.b) {
                requestFocus();
            }
            if (this.g != null) {
                this.g.E_();
            }
        }
    }

    protected void a(long j, S s, int i) {
        if ((this.g == null || !this.g.a(this.m, j, s, i)) && this.j != null) {
            CharSequence a = this.k != null ? this.k.a(this.m, s) : s.toString();
            Object text = getText();
            tp a_ = this.j.a_(text, getSelectionEnd());
            if (a_ != null) {
                text.replace(a_.a, a_.b, this.j.a(a));
            }
        }
    }

    public boolean onTextContextMenuItem(int i) {
        try {
            int selectionEnd;
            int max;
            int length = getText().length();
            if (isFocused()) {
                length = getSelectionStart();
                selectionEnd = getSelectionEnd();
                selectionEnd = Math.max(0, Math.min(length, selectionEnd));
                max = Math.max(0, Math.max(length, selectionEnd));
            } else {
                max = length;
                selectionEnd = 0;
            }
            boolean z = VERSION.SDK_INT >= 23 && i == 16908337;
            if (z || i == 16908322) {
                if (z) {
                    z = false;
                } else {
                    z = true;
                }
                a(selectionEnd, max, z);
            } else if (i == 16908321) {
                a(selectionEnd, max);
            } else if (i == 16908320) {
                a(selectionEnd, max);
                getText().replace(selectionEnd, max, BuildConfig.VERSION_NAME);
            } else if (!super.onTextContextMenuItem(i)) {
                return false;
            }
            return true;
        } catch (SecurityException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
    }

    @CallSuper
    protected CharSequence a(CharSequence charSequence) {
        if (this.c) {
            charSequence = charSequence.toString();
        }
        if (this.d) {
            return Html.fromHtml(charSequence.toString());
        }
        return charSequence;
    }

    private void a(int i, int i2, boolean z) {
        Object obj = null;
        ClipData primaryClip = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip();
        if (primaryClip != null) {
            for (int i3 = 0; i3 < primaryClip.getItemCount(); i3++) {
                CharSequence coerceToStyledText;
                if (z) {
                    coerceToStyledText = primaryClip.getItemAt(i3).coerceToStyledText(getContext());
                } else {
                    coerceToStyledText = primaryClip.getItemAt(i3).coerceToText(getContext());
                }
                if (coerceToStyledText != null) {
                    coerceToStyledText = a(coerceToStyledText);
                    if (!z && (coerceToStyledText instanceof Spanned)) {
                        coerceToStyledText = coerceToStyledText.toString();
                    }
                    Editable text = getText();
                    if (obj == null) {
                        Selection.setSelection(text, i2);
                        text.replace(i, i2, coerceToStyledText);
                        obj = 1;
                    } else {
                        text.insert(getSelectionEnd(), "\n");
                        text.insert(getSelectionEnd(), coerceToStyledText);
                    }
                }
            }
        }
    }

    public boolean requestRectangleOnScreen(Rect rect, boolean z) {
        rect.bottom += this.e;
        return super.requestRectangleOnScreen(rect, z);
    }

    private void a(int i, int i2) {
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) getText().subSequence(i, i2);
        if (this.o != null) {
            this.o.a(spannableStringBuilder);
        }
        ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, spannableStringBuilder));
    }
}
