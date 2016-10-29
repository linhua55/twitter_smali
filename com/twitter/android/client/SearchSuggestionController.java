package com.twitter.android.client;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.StringRes;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.twitter.android.SearchActivity;
import com.twitter.android.bu;
import com.twitter.android.io;
import com.twitter.android.mx;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.ag;
import com.twitter.library.api.search.c;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.SearchQueryView;
import com.twitter.library.widget.y;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bca;
import java.util.ArrayList;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SearchSuggestionController implements LoaderCallbacks<Cursor>, TextWatcher, OnClickListener, OnEditorActionListener, ag, y {
    private final LoaderManager a;
    private final FragmentManager b;
    private final int c;
    private final bf d;
    private final be e;
    private final bg f;
    private final ArrayList<TwitterScribeItem> g;
    private final QueryTextUpdateReceiver h;
    private final FragmentActivity i;
    private final Runnable j;
    private final bg k;
    private TwitterScribeAssociation l;
    private PopupEditText m;
    private String n;
    private bc o;
    private bca p;
    private boolean q;
    private bk r;
    private String s;
    private boolean t;
    private Drawable[] u;
    private int v;
    private boolean w;
    @StringRes
    private int x;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public SearchSuggestionController(FragmentActivity fragmentActivity, int i) {
        this.g = new ArrayList();
        this.h = new QueryTextUpdateReceiver(new Handler(Looper.getMainLooper()));
        this.j = new ba(this);
        this.v = 0;
        this.i = fragmentActivity;
        this.k = bg.a();
        this.a = fragmentActivity.getSupportLoaderManager();
        this.b = fragmentActivity.getSupportFragmentManager();
        this.c = i;
        this.f = new bg(fragmentActivity, this, new bl(this));
        this.l = (TwitterScribeAssociation) new TwitterScribeAssociation().b("app");
        this.e = new be(this);
        this.d = new bf(this);
        this.x = 2131363563;
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.s = bundle.getString("search_topic");
            PromptDialogFragment promptDialogFragment = (PromptDialogFragment) this.i.getSupportFragmentManager().findFragmentByTag("TAG_CLEAR_RECENT_SEARCH_DIALOG");
            if (promptDialogFragment != null && this.s != null) {
                promptDialogFragment.a((m) new bd(this, this.s));
            }
        }
    }

    public void b(Bundle bundle) {
        bundle.putString("search_topic", this.s);
    }

    public SearchSuggestionController a(TwitterScribeAssociation twitterScribeAssociation) {
        if (twitterScribeAssociation != null) {
            this.l = twitterScribeAssociation;
        }
        return this;
    }

    public SearchSuggestionController a(String str) {
        this.l.b(str);
        return this;
    }

    public SearchSuggestionController b(String str) {
        this.l.c(str);
        return this;
    }

    @SuppressLint({"WrongViewCast"})
    private boolean a(bca bca) {
        if (this.q) {
            return false;
        }
        PopupEditText popupEditText = (PopupEditText) bca.d().findViewById(2131953068);
        popupEditText.addTextChangedListener(this);
        popupEditText.setOnEditorActionListener(this);
        popupEditText.setPopupEditTextListener(this);
        popupEditText.setAdapter(this.f);
        popupEditText.a(PopupEditText.a, PopupEditText.b, (long) bu.h());
        popupEditText.setOnClickListener(this);
        this.m = popupEditText;
        c(this.m.getText().toString());
        this.t = this.m.getText().length() > 0;
        h();
        this.a.restartLoader(this.c, null, this);
        this.o = new bc();
        az.a(this.i).a(new c(this.i, this.k.c(), ((long) d.a("saved_searches_ttl_hours", 1)) * 3600000), this.d);
        popupEditText.post(this.j);
        bbu.a(new TwitterScribeLog(this.k.c().g()).b(TwitterScribeLog.a(this.l, "search_box", null, "focus_field")));
        this.q = true;
        if (this.r != null) {
            this.r.b();
        }
        return true;
    }

    private boolean b(bca bca) {
        if (!this.q) {
            return false;
        }
        SuggestionsProvider.a();
        this.m.removeTextChangedListener(this);
        bca.d().clearFocus();
        this.h.a(this.n).a(this.m);
        r.a(this.i, this.m, false, this.h);
        i();
        this.q = false;
        if (this.r != null) {
            this.r.a();
        }
        return true;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Uri build;
        CharSequence obj = this.m.getText().toString();
        this.n = obj;
        if (aj.b(obj)) {
            build = SuggestionsProvider.i.buildUpon().appendPath(obj).build();
        } else {
            build = SuggestionsProvider.i;
        }
        return new bu(this.i, build, null, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        this.f.a(this.n);
        this.f.swapCursor(cursor);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        this.f.a(null);
        this.f.swapCursor(null);
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953068) {
            PopupEditText popupEditText = (PopupEditText) view;
            r.b(this.i, popupEditText, true);
            popupEditText.a();
        } else if (id == 2131953236) {
            String str = (String) view.getTag();
            CharSequence string = this.i.getString(2131363450, new Object[]{str});
            this.s = str;
            ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131363451)).a(string)).d(2131364205)).f(2131363158)).i().a(new bd(this, str)).show(this.b, "TAG_CLEAR_RECENT_SEARCH_DIALOG");
        } else if (id == 2131953267) {
            a(view.getTag() + " ", true);
        }
    }

    public void a(int i) {
        a(i, (Cursor) this.f.getItem(i));
    }

    void a(int i, Cursor cursor) {
        int i2 = cursor.getInt(1);
        String string = cursor.getString(4);
        String string2 = cursor.getString(6);
        Uri parse = string2 != null ? Uri.parse(string2) : null;
        String string3 = cursor.getString(3);
        String string4 = cursor.getString(2);
        long j = cursor.getLong(11);
        Intent putExtra = new Intent(this.i, SearchActivity.class).setAction(string).putExtra("user_query", this.n).putExtra("query", string3).putExtra("search_suggestion_position", i).putExtra("source_association", this.l);
        if (this.w) {
            putExtra.putExtra("search_type", e());
        } else {
            putExtra.setData(parse);
        }
        this.n = string3;
        if (j > 0) {
            putExtra.putExtra("search_suggestion_id", j);
        }
        io.a(false, putExtra);
        switch (i2) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.i.startActivity(putExtra);
            case WireMessage.WIRE_CONTROL /*2*/:
                int i3 = cursor.getInt(8);
                putExtra.putExtra("query_name", string4);
                putExtra.putExtra("search_type", i3);
                this.i.startActivity(putExtra);
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case ControlMessage.CONTROL_BAN /*8*/:
                putExtra.putExtra("query_name", string4);
                this.i.startActivity(putExtra);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                putExtra.putExtra("query_name", string4).putExtra("search_type", 2);
                this.i.startActivity(putExtra);
            default:
        }
    }

    private int e() {
        switch (this.v) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 2;
            default:
                return 0;
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131953068 || (i != 3 && (keyEvent == null || 66 != keyEvent.getKeyCode()))) {
            return false;
        }
        return f();
    }

    public void w() {
    }

    public void a(CharSequence charSequence) {
        c(charSequence.toString());
        this.a.restartLoader(this.c, null, this);
    }

    public void a(int i, int i2) {
    }

    public void b(CharSequence charSequence) {
        a(charSequence, false);
    }

    public void a(CharSequence charSequence, boolean z) {
        if (this.m != null) {
            this.m.setText(charSequence);
            a(charSequence);
            if (z) {
                this.m.setSelection(charSequence.length());
            }
        }
    }

    private void c(String str) {
        if (aj.b((CharSequence) str) && SuggestionsProvider.a(str) == null) {
            az.a(this.i).a(new com.twitter.library.api.search.r(this.i, this.k.c(), str, this.v, 0, "search_box"), this.e);
        }
    }

    private boolean f() {
        CharSequence trim = this.m.getText().toString().trim();
        if (!aj.b(trim) || "#".equals(trim)) {
            return false;
        }
        Intent putExtra = new Intent(this.i, SearchActivity.class).setAction("com.twitter.android.action.SEARCH").putExtra("user_query", trim).putExtra("query", trim).putExtra("query_name", trim).putExtra("q_source", "typed_query").putExtra("source_association", this.l);
        if (this.w) {
            putExtra.putExtra("search_type", e());
        }
        this.i.startActivity(putExtra);
        return true;
    }

    void a() {
        Loader loader = this.a.getLoader(this.c);
        if (loader != null) {
            loader.onContentChanged();
        }
    }

    public void a(ToolBar toolBar) {
        bca a = toolBar.a(2131953426);
        a.a(new bb(this));
        this.p = a;
        g();
    }

    private void g() {
        SearchQueryView searchQueryView = (SearchQueryView) this.p.d();
        searchQueryView.setOnClearClickListener(this);
        searchQueryView.setContentDescription(this.i.getString(2131362018));
        searchQueryView.setHint(this.x);
        this.u = searchQueryView.getCompoundDrawables();
    }

    public boolean b() {
        return this.q;
    }

    public boolean c() {
        return this.q && this.p != null && this.p.f();
    }

    public boolean d() {
        return (this.q || this.p == null || !this.p.e()) ? false : true;
    }

    public boolean a(SearchQueryView searchQueryView) {
        if (aj.a(searchQueryView.getText())) {
            c();
        } else {
            searchQueryView.setText(null);
        }
        return false;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        boolean z = editable.length() > 0;
        if (z != this.t) {
            this.t = z;
            h();
        }
    }

    private void h() {
        Drawable drawable = null;
        if (ak.f()) {
            PopupEditText popupEditText = this.m;
            if (this.t) {
                drawable = this.u[0];
            }
            popupEditText.setCompoundDrawablesWithIntrinsicBounds(drawable, this.u[1], this.u[2], this.u[3]);
            return;
        }
        popupEditText = this.m;
        Drawable drawable2 = this.u[0];
        Drawable drawable3 = this.u[1];
        if (this.t) {
            drawable = this.u[2];
        }
        popupEditText.setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable, this.u[3]);
    }

    public void b(int i) {
        this.v = i;
        this.w = true;
    }

    public void c(@StringRes int i) {
        this.x = i;
    }

    private void i() {
        if (!this.g.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.k.c().g()).b(TwitterScribeLog.a(this.l, "search_box", "typeahead", "results"))).b(this.g));
            this.g.clear();
        }
    }

    public void a(bk bkVar) {
        this.r = bkVar;
    }
}
