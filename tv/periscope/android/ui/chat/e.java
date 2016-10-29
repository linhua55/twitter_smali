package tv.periscope.android.ui.chat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.ColorRes;
import android.support.annotation.StringRes;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import defpackage.dcx;
import defpackage.dcy;
import defpackage.ddd;
import defpackage.ddg;
import java.util.ArrayList;
import tv.periscope.android.library.h;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.n;
import tv.periscope.android.library.o;
import tv.periscope.android.library.p;
import tv.periscope.android.view.w;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.y;

/* compiled from: Twttr */
public class e extends Adapter<t> {
    private final Context a;
    private final ArrayList<j> b;
    private final Handler c;
    private final x d;
    private final g e;
    private final w<d, Message> f;
    private long g;
    private MessageType h;
    private int i;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((t) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public e(Context context, x xVar, w<d, Message> wVar) {
        this.i = -1;
        this.a = context;
        this.b = new ArrayList();
        this.c = new Handler(Looper.getMainLooper());
        this.d = xVar;
        this.e = new g(this, 4);
        this.f = wVar;
        setHasStableIds(true);
    }

    public long getItemId(int i) {
        return ((j) this.b.get(i)).b;
    }

    public t a(ViewGroup viewGroup, int i) {
        switch (i) {
            case p.View_paddingStart /*2*/:
                return new ak(LayoutInflater.from(this.a).inflate(m.ps__chat_row_join, viewGroup, false), this.d);
            case p.View_paddingEnd /*3*/:
                return new t(LayoutInflater.from(this.a).inflate(m.ps__broadcast_started_locally, viewGroup, false));
            case p.View_theme /*4*/:
                return new aj(LayoutInflater.from(this.a).inflate(m.ps__chat_share_screenshot, viewGroup, false), this.d);
            case p.Toolbar_contentInsetStart /*5*/:
                View inflate = LayoutInflater.from(this.a).inflate(m.ps__channel_info_prompt, viewGroup, false);
                ((TextView) inflate.findViewById(k.text)).setText(ddd.a(this.a.getString(o.ps__replay_skip_tip)));
                return new t(inflate);
            case p.Toolbar_contentInsetEnd /*6*/:
                return new t(LayoutInflater.from(this.a).inflate(m.ps__chat_row_verdict, viewGroup, false));
            case p.Toolbar_contentInsetLeft /*7*/:
                return new t(LayoutInflater.from(this.a).inflate(m.ps__channel_info_prompt, viewGroup, false));
            default:
                return new d(LayoutInflater.from(this.a).inflate(m.ps__chat_row, viewGroup, false), this.d);
        }
    }

    public void a(t tVar, int i) {
        if (i >= 0) {
            j a = a(i);
            Resources resources = this.a.getResources();
            ak akVar;
            TextView textView;
            switch (f.b[a.a.b().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    akVar = (ak) tVar;
                    akVar.itemView.getBackground().mutate().setColorFilter(resources.getColor(h.ps__dark_grey), Mode.SRC_ATOP);
                    textView = akVar.a;
                    Context context = this.a;
                    int i2 = o.ps__broadcaster_kick_block;
                    Object[] objArr = new Object[1];
                    objArr[0] = this.a.getString(o.ps__username_format, new Object[]{a.a.t()});
                    textView.setText(ddd.a(context.getString(i2, objArr)));
                    akVar.b.setVisibility(8);
                    break;
                case p.View_paddingStart /*2*/:
                    akVar = (ak) tVar;
                    akVar.itemView.getBackground().mutate().setColorFilter(dcy.a(resources, a.a.d().intValue()), Mode.SRC_ATOP);
                    if (a.a.q().intValue() > 0) {
                        akVar.a.setText(ddd.a(resources.getQuantityString(n.ps__invited_num_followers_embolden, a.a.q().intValue(), new Object[]{a(a.a), dcx.a(resources, (long) a.a.q().intValue(), true)})));
                    } else {
                        akVar.a.setText(ddd.a(resources.getString(o.ps__invited_followers, new Object[]{a(a.a)})));
                    }
                    akVar.b.setVisibility(8);
                    akVar.c = a;
                    break;
                case p.View_paddingEnd /*3*/:
                    akVar = (ak) tVar;
                    akVar.itemView.getBackground().mutate().setColorFilter(dcy.a(resources, a.a.d().intValue()), Mode.SRC_ATOP);
                    akVar.a.setText(ddd.a(resources.getString(o.ps__shared_on_twitter, new Object[]{a(a.a)})));
                    akVar.c = a;
                    akVar.b.setVisibility(0);
                    break;
                case p.View_theme /*4*/:
                    int color;
                    akVar = (ak) tVar;
                    if (a.c() > 0) {
                        color = resources.getColor(h.ps__dark_grey);
                    } else {
                        color = dcy.a(resources, a.a.d().intValue());
                    }
                    akVar.itemView.getBackground().mutate().setColorFilter(color, Mode.SRC_ATOP);
                    akVar.a.setText(ddd.a(this.a.getString(o.ps__chat_join, new Object[]{a(a.a)})));
                    akVar.c = a;
                    akVar.b.setVisibility(8);
                    break;
                case p.Toolbar_contentInsetStart /*5*/:
                    a((d) tVar, a, i);
                    break;
                case p.Toolbar_contentInsetEnd /*6*/:
                    aj ajVar = (aj) tVar;
                    ajVar.a.setText(ddd.a(this.a.getString(o.ps__chat_share_screenshot_twitter)));
                    ajVar.b = a;
                    break;
                case p.Toolbar_contentInsetLeft /*7*/:
                case p.Toolbar_contentInsetRight /*8*/:
                    TextView textView2 = (TextView) tVar.itemView.findViewById(k.moderation_verdict);
                    textView = (TextView) tVar.itemView.findViewById(k.consequence);
                    switch (f.a[a.a.D().ordinal()]) {
                        case p.View_android_focusable /*1*/:
                            a(textView2, o.ps__moderator_positive, h.ps__blue);
                            textView.setVisibility(8);
                            break;
                        case p.View_paddingStart /*2*/:
                            a(textView2, o.ps__moderator_negative, h.ps__red);
                            textView.setVisibility(0);
                            break;
                        case p.View_paddingEnd /*3*/:
                            a(textView2, o.ps__moderator_negative_spam, h.ps__red);
                            textView.setVisibility(0);
                            break;
                        default:
                            a(textView2, o.ps__moderator_neutral, h.ps__grey);
                            textView.setVisibility(8);
                            break;
                    }
                case p.Toolbar_popupTheme /*9*/:
                    ((TextView) tVar.itemView.findViewById(k.text)).setText(ddd.a(this.a.getString(o.ps__local_prompt_moderator_feedback, new Object[]{a.a.C()})));
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    Message message = a.a;
                    if (message != null) {
                        ((TextView) tVar.itemView.findViewById(k.text)).setText(ddd.a(c(message)));
                        break;
                    }
                    break;
                case p.Toolbar_subtitleTextAppearance /*11*/:
                    ((TextView) tVar.itemView.findViewById(k.text)).setText(ddd.a(a.a.m()));
                    break;
            }
            if (tVar.k != null) {
                this.e.a(tVar.k);
            }
            tVar.itemView.setAlpha(a.a());
            u uVar = new u(tVar.itemView, a);
            y a2 = y.a(tVar.getItemId(), a.c());
            tVar.k = a2;
            this.e.a(a2, uVar);
        }
    }

    private String a(ReportType reportType) {
        switch (f.c[reportType.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return this.a.getResources().getString(o.ps__moderator_negative_spam).toUpperCase();
            case p.View_paddingStart /*2*/:
                return this.a.getResources().getString(o.ps__convicted_abuse).toUpperCase();
            default:
                return null;
        }
    }

    private String c(Message message) {
        String a = a(message.z());
        if (a != null && message.B() != null) {
            String str = "*" + message.B() + "*";
            switch (f.d[message.G().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_suspended_with_body_and_reason, new Object[]{str, a});
                case p.View_paddingStart /*2*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_disabled_with_body_and_reason, new Object[]{str, a});
                case p.View_paddingEnd /*3*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_suspended_with_body_and_reason, new Object[]{str, a});
                case p.View_theme /*4*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_disabled_with_body_and_reason, new Object[]{str, a});
                default:
                    return null;
            }
        } else if (a != null) {
            switch (f.d[message.G().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_suspended_with_reason, new Object[]{a});
                case p.View_paddingStart /*2*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_disabled_with_reason, new Object[]{a});
                case p.View_paddingEnd /*3*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_suspended_with_reason, new Object[]{a});
                case p.View_theme /*4*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_disabled_with_reason, new Object[]{a});
                default:
                    return null;
            }
        } else {
            switch (f.d[message.G().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_suspended);
                case p.View_paddingStart /*2*/:
                    return this.a.getString(o.ps__local_prompt_conviction_broadcast_disabled);
                case p.View_paddingEnd /*3*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_suspended);
                case p.View_theme /*4*/:
                    return this.a.getString(o.ps__local_prompt_conviction_global_disabled);
                default:
                    return null;
            }
        }
    }

    private void a(TextView textView, @StringRes int i, @ColorRes int i2) {
        textView.setText(this.a.getResources().getString(i));
        textView.getBackground().setColorFilter(this.a.getResources().getColor(i2), Mode.MULTIPLY);
    }

    public String a(Message message) {
        if (ddg.a(message.i())) {
            return message.j();
        }
        return this.a.getString(o.ps__username_format, new Object[]{r0});
    }

    public int getItemViewType(int i) {
        switch (f.b[a(i).a.b().ordinal()]) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
                return 2;
            case p.Toolbar_contentInsetEnd /*6*/:
                return 4;
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
                return 6;
            case p.Toolbar_popupTheme /*9*/:
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return 7;
            case p.Toolbar_titleMargins /*12*/:
                return 3;
            case p.Toolbar_titleMarginStart /*13*/:
                return 5;
            default:
                return 1;
        }
    }

    private void a(d dVar, j jVar, int i) {
        this.f.a(dVar, jVar.a, i);
        dVar.j = jVar;
    }

    public int getItemCount() {
        return this.b.size();
    }

    public j a(int i) {
        return (j) this.b.get(i);
    }

    public void b(Message message) {
        j jVar;
        switch (f.b[message.b().ordinal()]) {
            case p.View_paddingStart /*2*/:
            case p.View_theme /*4*/:
                if (message.b() == MessageType.Join && message.b() == this.h) {
                    int size = this.b.size() - 1;
                    jVar = (j) this.b.remove(size);
                    j jVar2 = new j(message, jVar.b);
                    if (this.e.c() > 0 && !this.e.a().a()) {
                        this.e.a(y.a(jVar.b, jVar.c()));
                        jVar2.a(jVar.c() + 1);
                        this.b.add(jVar2);
                        notifyItemChanged(size);
                        this.h = message.b();
                        return;
                    }
                }
            case p.Toolbar_contentInsetEnd /*6*/:
                if (this.h == MessageType.Screenshot) {
                    if (((j) this.b.get(this.b.size() - 1)).a() > 0.2f) {
                        return;
                    }
                }
                break;
            case p.Toolbar_titleTextAppearance /*10*/:
                if (this.i != -1 && this.i >= 0 && this.i < this.b.size()) {
                    jVar = (j) this.b.get(this.i);
                    if (jVar.a == message && jVar.a() > 0.2f) {
                        return;
                    }
                }
                this.i = this.b.size();
                break;
        }
        ArrayList arrayList = this.b;
        long j = this.g;
        this.g = 1 + j;
        arrayList.add(new j(message, j));
        notifyItemInserted(this.b.size());
        this.h = message.b();
    }

    public void a() {
        this.b.clear();
        this.e.b();
        this.h = null;
        this.i = -1;
    }
}
