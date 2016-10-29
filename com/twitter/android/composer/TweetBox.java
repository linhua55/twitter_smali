package com.twitter.android.composer;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.annotation.VisibleForTesting;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import bve;
import com.twitter.android.autocomplete.PopupSuggestionEditText;
import com.twitter.android.autocomplete.SuggestionEditText;
import com.twitter.android.autocomplete.adapters.a;
import com.twitter.android.autocomplete.e;
import com.twitter.android.autocomplete.f;
import com.twitter.android.autocomplete.g;
import com.twitter.android.client.by;
import com.twitter.android.client.c;
import com.twitter.android.mx;
import com.twitter.android.provider.m;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.core.az;
import com.twitter.ui.widget.ax;
import com.twitter.util.Tristate;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.ui.r;
import com.twitter.util.w;
import defpackage.bbu;
import defpackage.buj;
import defpackage.ceq;
import defpackage.cgu;
import defpackage.rv;
import defpackage.tq;
import java.util.List;
import java.util.regex.Matcher;
import sp;
import te;
import tp;
import tr;

/* compiled from: Twttr */
public class TweetBox extends FrameLayout implements TextWatcher, OnEditorActionListener, e, f<tq, m>, g<tq, m> {
    SuggestionEditText<tq, m> a;
    ch b;
    boolean c;
    private final boolean d;
    private final Session e;
    private final c f;
    private final tr g;
    private Tweet h;
    private boolean i;
    private boolean j;
    private int k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private as q;
    private boolean r;
    private TextWatcher s;
    private int t;
    private Tristate u;
    private String v;

    public TweetBox(Context context) {
        this(context, null);
    }

    public TweetBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new tr().b(true).a(true);
        this.l = true;
        this.p = -1;
        this.t = 140;
        this.u = Tristate.UNDEFINED;
        this.e = bg.a().c();
        this.f = c.a(context);
        this.d = d.a("hashflags_in_composer_android_enabled");
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        Context context = getContext();
        PopupSuggestionEditText popupSuggestionEditText = (PopupSuggestionEditText) ObjectUtils.a(findViewById(2131952229));
        if (popupSuggestionEditText == null) {
            throw new IllegalStateException("No edit text found in layout");
        }
        popupSuggestionEditText.addTextChangedListener(this);
        popupSuggestionEditText.setOnEditorActionListener(this);
        popupSuggestionEditText.setSuggestionListener(this);
        popupSuggestionEditText.setSuggestionStringConverter(this);
        popupSuggestionEditText.setSelectionChangeListener(this);
        popupSuggestionEditText.setOnTouchListener(new bx(this));
        popupSuggestionEditText.setKeyPreImeListener(new by(this));
        if (ak.f()) {
            popupSuggestionEditText.setGravity(5);
        }
        popupSuggestionEditText.setImeActionLabel(getResources().getString(2131363376), mx.AppCompatTheme_buttonStyleSmall);
        if (!popupSuggestionEditText.hasFocus()) {
            this.c = true;
        }
        popupSuggestionEditText.setOnFocusChangeListener(new bz(this));
        popupSuggestionEditText.setTypeface(ax.a(context).a);
        popupSuggestionEditText.setAdapter(new a(context));
        popupSuggestionEditText.setSuggestionProvider(new sp(context, new te(context, this.e, "compose")));
        popupSuggestionEditText.setTokenizer(this.g);
        if (this.d) {
            new bs(new tr().b(true), new ca(this)).a(popupSuggestionEditText);
            popupSuggestionEditText.setCopyTransformer(new cb(this));
        }
        this.a = popupSuggestionEditText;
        k();
        if (this.r) {
            p();
        }
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.l, this.u);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(((SavedState) parcelable).getSuperState());
        this.l = ((SavedState) parcelable).a;
        this.u = ((SavedState) parcelable).b;
    }

    public void setSuggestionsEnabled(boolean z) {
        this.a.a(z);
    }

    public void setTextWatcher(TextWatcher textWatcher) {
        this.s = textWatcher;
    }

    public void a() {
        this.a.bringPointIntoView(this.a.getSelectionStart());
    }

    public void setHintText(String str) {
        boolean z = (this.a.isFocused() || str == null) ? false : true;
        this.c = z;
        this.a.setHint(str);
    }

    public void setPrefillText(String str) {
        this.v = str;
    }

    public void setTweetBoxListener(ch chVar) {
        this.b = chVar;
    }

    public void a(Tweet tweet, Tristate tristate) {
        this.u = tristate;
        if (!ObjectUtils.a((Object) tweet, this.h)) {
            this.h = tweet;
            if (tweet != null) {
                k();
            } else {
                this.h = null;
            }
        }
    }

    private boolean o() {
        if (this.u == Tristate.UNDEFINED) {
            this.u = Tristate.a(buj.a().b());
        }
        return this.u == Tristate.TRUE;
    }

    public void a(String str, int[] iArr) {
        boolean a = this.a.a(false);
        try {
            this.a.setText(str);
            if (iArr == null || !b(iArr[0], iArr[1])) {
                setCursorPosition(getTextLength());
            }
            this.j = false;
        } finally {
            this.a.a(a);
        }
    }

    public void c() {
        setCursorPosition(getTextLength());
    }

    private void p() {
        this.a.setFilters(new InputFilter[]{new cc(this)});
    }

    public void setAlertHashtag(boolean z) {
        this.r = z;
        SuggestionEditText suggestionEditText = this.a;
        String str = " #alert";
        int selectionStart = suggestionEditText.getSelectionStart();
        int selectionEnd = suggestionEditText.getSelectionEnd();
        String obj = suggestionEditText.getText().toString();
        if (z) {
            CharSequence charSequence = obj + " #alert";
            int length = charSequence.length();
            CharSequence spannableString = new SpannableString(charSequence);
            spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131886108)), length - " #alert".length(), length, 33);
            suggestionEditText.setText(spannableString);
            suggestionEditText.setSelection(selectionStart, selectionEnd);
            p();
            return;
        }
        length = obj.length();
        int length2 = length - " #alert".length();
        suggestionEditText.setFilters(new InputFilter[0]);
        if (length2 >= 0 && " #alert".equals(obj.subSequence(length2, length))) {
            suggestionEditText.setText(obj.subSequence(0, length2));
            if (selectionStart > length2) {
                suggestionEditText.setSelection(length2, length2);
            } else if (selectionEnd > length2) {
                suggestionEditText.setSelection(selectionStart, length2);
            } else {
                suggestionEditText.setSelection(selectionStart, selectionEnd);
            }
        }
    }

    public void a(int i, int i2) {
        if (this.r) {
            int length = this.a.length() - " #alert".length();
            if (length >= 0) {
                if (i > length) {
                    this.a.setSelection(length, length);
                    return;
                } else if (i2 > length) {
                    this.a.setSelection(i, length);
                    return;
                } else {
                    return;
                }
            }
        }
        if (this.d) {
            a(this.a, i, i2);
        }
    }

    @VisibleForTesting
    static void a(EditText editText, int i, int i2) {
        Spanned text = editText.getText();
        cf a = a(text, i);
        if (i2 != i) {
            cf a2 = a(text, i2);
            if (a != null) {
                i = text.getSpanStart(a) - 1;
            }
            if (a2 != null) {
                i2 = text.getSpanEnd(a2);
            }
            editText.setSelection(i, i2);
        } else if (a != null) {
            int spanStart = text.getSpanStart(a);
            editText.setSelection(spanStart, spanStart);
        }
    }

    private static cf a(Spanned spanned, int i) {
        return (cf) CollectionUtils.b(spanned.getSpans(i, i, cf.class));
    }

    public boolean d() {
        return this.j && this.a != null && this.a.length() > 0;
    }

    public boolean e() {
        MotionEvent obtain = MotionEvent.obtain(0, 0, 0, (float) (this.a.getMeasuredWidth() - 1), (float) (this.a.getMeasuredHeight() - 1), 0);
        this.a.onTouchEvent(obtain);
        obtain.setAction(3);
        this.a.onTouchEvent(obtain);
        obtain.recycle();
        return this.a.performLongClick();
    }

    public void f() {
        if (!this.m) {
            if (this.c) {
                this.c = false;
                k();
            }
            this.m = true;
        }
        l();
    }

    public void g() {
        this.m = false;
        l();
    }

    public void h() {
        if (!this.n) {
            if (this.c) {
                this.c = false;
                k();
            }
            this.n = true;
        }
        l();
    }

    public void i() {
        this.n = false;
        l();
    }

    public void setQuote(as asVar) {
        this.q = asVar;
        l();
    }

    public String getText() {
        return c(0, this.a.length());
    }

    public int[] getSelection() {
        return new int[]{this.a.getSelectionStart(), this.a.getSelectionEnd()};
    }

    public int getTextLength() {
        return this.a.length();
    }

    public void setCursorPosition(int i) {
        this.a.setSelection(i);
    }

    public boolean b(int i, int i2) {
        if (i < 0 || i2 > this.a.length()) {
            return false;
        }
        this.a.setSelection(i, i2);
        return true;
    }

    public void a(boolean z) {
        if (!z) {
            r.b(getContext(), this.a, false);
            this.a.clearFocus();
            this.i = false;
        } else if (hasWindowFocus()) {
            this.a.requestFocus();
            r.b(getContext(), this.a, true);
            this.i = false;
        } else {
            this.i = true;
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.i) {
            a(true);
        }
    }

    public void setImeActionLabel(CharSequence charSequence) {
        this.a.setImeActionLabel(charSequence, mx.AppCompatTheme_buttonStyleSmall);
    }

    public void a(CharSequence charSequence, int i) {
        this.a.setImeActionLabel(charSequence, i);
    }

    public void setInputType(int i) {
        this.a.setInputType(i);
    }

    public tq getTokenAtCursor() {
        return this.g.c(this.a.getText(), this.a.getSelectionEnd());
    }

    public void a(String str) {
        Object text = this.a.getText();
        tp a_ = this.g.a_(text, this.a.getSelectionEnd());
        if (a_ != null) {
            text.replace(a_.a, a_.b, str + " ");
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).restartInput(this.a);
    }

    public boolean hasFocus() {
        return this.a.hasFocus();
    }

    public boolean j() {
        return this.a.requestFocus();
    }

    void k() {
        if (!q() && getTextLength() == 0 && !this.m && !this.n && !this.c && !o()) {
            if (this.h != null) {
                a(this.h);
            } else if (!aj.a(this.v)) {
                b(this.v);
            }
        }
    }

    private boolean q() {
        return this.h == null && aj.a(this.v);
    }

    private void b(String str) {
        a(" " + str, null);
        post(new cd(this));
    }

    private void a(Tweet tweet) {
        List c = tweet.c(this.e.g());
        a(ceq.a(c), null);
        int size = c.size();
        int maxUserReplyCount = getMaxUserReplyCount();
        int i = 0;
        for (int i2 = 0; i2 < Math.min(size, maxUserReplyCount); i2++) {
            i += com.twitter.util.object.e.b(((az) c.get(i2)).b).length() + 2;
        }
        if (size > maxUserReplyCount) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e.g()).b(":composition::mentions_highlight:impression")).a((long) (size - maxUserReplyCount)));
        }
        post(new ce(this, this.a, i));
    }

    private int getMaxUserReplyCount() {
        return 5;
    }

    private int r() {
        int i = 0;
        int codePointCount = this.a.getText().toString().codePointCount(0, this.a.length());
        int i2 = codePointCount + this.k;
        if (!bve.b().c()) {
            int a;
            int a2;
            by a3 = by.a(getContext());
            if (this.m) {
                a = a3.a(this.o) + 1;
            } else {
                a = 0;
            }
            if (this.q != null) {
                a2 = a3.a(true) + 1;
            } else {
                a2 = 0;
            }
            if (this.n) {
                i = a3.a(true) + 1;
            }
            i += a + a2;
        }
        if (codePointCount > 0 || i == 0) {
            return (i2 + i) - s();
        }
        return i - 1;
    }

    private int s() {
        int i = 0;
        if (!this.d) {
            return 0;
        }
        Editable text = this.a.getText();
        cf[] cfVarArr = (cf[]) text.getSpans(0, this.a.length(), cf.class);
        int length = cfVarArr.length;
        int i2 = 0;
        while (i2 < length) {
            Object obj = cfVarArr[i2];
            i2++;
            i = (text.getSpanEnd(obj) - text.getSpanStart(obj)) + i;
        }
        return i;
    }

    public int getCount() {
        return this.p;
    }

    public void l() {
        if (this.t != -1) {
            int r = r();
            if (this.p != r) {
                this.p = r;
                if (this.b != null) {
                    this.b.a(this.p);
                }
            }
        } else if (this.b != null) {
            this.b.a(-1);
        }
    }

    public void setAttachmentsUseSecureUrls(boolean z) {
        this.o = z;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.s != null) {
            this.s.beforeTextChanged(charSequence, i, i2, i3);
        }
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.s != null) {
            this.s.onTextChanged(charSequence, i, i2, i3);
        }
    }

    public void afterTextChanged(Editable editable) {
        int i = 5;
        this.j = true;
        Matcher matcher = rv.h.matcher(editable.toString());
        this.k = 0;
        while (matcher.find()) {
            String toLowerCase = matcher.group(3).trim().toLowerCase();
            this.k = (by.a(getContext()).a(n.c(toLowerCase)) - toLowerCase.length()) + this.k;
        }
        if (this.k > 0) {
            t();
        }
        l();
        if (editable.length() > 0) {
            SuggestionEditText suggestionEditText = this.a;
            if (!w.a(editable.charAt(0))) {
                i = 3;
            }
            suggestionEditText.setGravity(i);
        } else if (ak.f()) {
            this.a.setGravity(5);
        }
        if (this.s != null) {
            this.s.afterTextChanged(editable);
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (this.b != null && i == mx.AppCompatTheme_buttonStyleSmall && n()) {
            this.b.b();
        }
        return false;
    }

    public void setMaxChars(int i) {
        this.t = i;
    }

    public boolean a(tq tqVar, long j, m mVar, int i) {
        String str = tqVar.b == 1 ? "user" : "hashtag";
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.e.g());
        String[] strArr = new String[1];
        strArr[0] = ScribeLog.a(":composition:autocomplete_dropdown", str, "select");
        bbu.a(twitterScribeLog.b(strArr));
        return false;
    }

    public void a(tq tqVar, cgu<m> cgu_com_twitter_android_provider_m) {
        String str = tqVar.b == 1 ? "user" : "hashtag";
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.e.g());
        String[] strArr = new String[1];
        strArr[0] = ScribeLog.a(":composition:autocomplete_dropdown", str, "results");
        bbu.a(twitterScribeLog.b(strArr));
    }

    public void E_() {
    }

    public String a(tq tqVar, m mVar) {
        return a.a(tqVar.b, mVar);
    }

    public boolean m() {
        return getText().trim().isEmpty() && !this.m && this.q == null;
    }

    public boolean n() {
        return !m() && (this.t == -1 || this.p <= this.t);
    }

    private void t() {
        if (this.l) {
            this.l = false;
            Context context = getContext();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            int i = defaultSharedPreferences.getInt("url_hints", 0);
            if (i < 3) {
                r.a(context, 2131363371);
                Editor edit = defaultSharedPreferences.edit();
                edit.putInt("url_hints", i + 1);
                edit.apply();
            }
        }
    }

    private void a(bu buVar) {
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) this.a.getText();
        for (Object obj : (cf[]) spannableStringBuilder.getSpans(buVar.a(), buVar.b(), cf.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(obj), spannableStringBuilder.getSpanEnd(obj), BuildConfig.VERSION_NAME);
            spannableStringBuilder.removeSpan(obj);
        }
    }

    private void b(bu buVar) {
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) this.a.getText();
        int b = buVar.b();
        CharSequence subSequence = spannableStringBuilder.subSequence(buVar.a() + 1, b);
        if (com.twitter.library.view.d.a(subSequence.toString())) {
            spannableStringBuilder.setSpan(new cf(), b, com.twitter.library.view.d.a(getContext(), spannableStringBuilder, new com.twitter.library.view.d(subSequence.toString(), b), this, true) + b, 33);
        }
    }

    private String c(int i, int i2) {
        if (i == i2) {
            return BuildConfig.VERSION_NAME;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.a.getText(), i, i2);
        a(spannableStringBuilder);
        return spannableStringBuilder.toString();
    }

    private void a(SpannableStringBuilder spannableStringBuilder) {
        int i = 0;
        cf[] cfVarArr = (cf[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), cf.class);
        int length = cfVarArr.length;
        while (i < length) {
            Object obj = cfVarArr[i];
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(obj), spannableStringBuilder.getSpanEnd(obj), BuildConfig.VERSION_NAME);
            i++;
        }
    }
}
