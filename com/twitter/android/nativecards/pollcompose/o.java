package com.twitter.android.nativecards.pollcompose;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.cgf;
import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: Twttr */
public class o implements ac {
    private final int a;
    private final int b;
    private final int c;
    private final q d;
    private final h e;
    private cgf f;
    private p g;
    private DraftAttachment h;

    public o(q qVar, h hVar) {
        this.d = qVar;
        this.d.setPollComposeViewListener(this);
        this.e = hVar;
        this.a = d.a("cards_polling_card_duration_minutes_min", 5);
        this.b = d.a("cards_polling_card_duration_minutes_max", 10080);
        this.c = d.a("cards_polling_card_duration_minutes_default", 1440);
    }

    public void a(p pVar) {
        this.g = pVar;
    }

    public void a(cgf cgf) {
        if (cgf == null) {
            cgf = new cgf(new ArrayList(Arrays.asList(new String[]{BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME})), null, null);
        }
        this.f = cgf;
        if (!this.d.a()) {
            this.d.a(this.f);
            q qVar = this.d;
            boolean z = d.a("cards_polling_card_poll3_4choice_text_only_compose") && this.f.a().size() < 4;
            qVar.setAddChoiceVisible(z);
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b("compose::compose_bar:add_poll:click"));
            this.d.a(d.a("cards_polling_card_edit_duration_compose"), b(this.f.b()));
            this.d.setPollAddImageVisible(d.a("cards_polling_card_image_poll_compose"));
            if (this.g != null) {
                this.g.a();
            }
        }
    }

    private long b(String str) {
        return aj.a((CharSequence) str) ? (long) this.c : Long.parseLong(str);
    }

    public void a() {
        if (this.d.a()) {
            this.d.b();
        }
        if (this.g != null) {
            this.g.c();
        }
    }

    public void a(EditableImage editableImage) {
        if (this.f != null) {
            this.f.a(editableImage);
            this.d.b(this.f);
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b("compose::compose_bar:add_poll_image:click"));
            if (this.g != null) {
                if (this.h != null) {
                    this.g.b(this.h);
                }
                this.h = new DraftAttachment((EditableMedia) editableImage, 1);
                this.g.a(this.h);
            }
        }
    }

    public void b() {
        if (this.f != null) {
            this.f.a(null);
            this.d.b(this.f);
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b("compose::compose_bar:remove_poll_image:click"));
            if (this.g != null && this.h != null) {
                this.g.b(this.h);
                this.h = null;
            }
        }
    }

    public boolean c() {
        if (this.f == null) {
            return false;
        }
        int i = 0;
        for (String str : this.f.a()) {
            if (a(str) < 0) {
                return false;
            }
            int i2;
            if (aj.b(str.trim())) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        if (i >= 2) {
            return true;
        }
        return false;
    }

    public boolean d() {
        return this.f == null || this.f.d();
    }

    public cgf e() {
        return this.f;
    }

    public void a(boolean z) {
        if (z || d()) {
            int i;
            if (this.f != null) {
                i = 0;
                for (CharSequence b : this.f.a()) {
                    int i2;
                    if (aj.b(b)) {
                        i2 = i + 1;
                    } else {
                        i2 = i;
                    }
                    i = i2;
                }
            } else {
                i = 0;
            }
            this.f = null;
            this.d.b();
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("compose::compose_bar:remove_poll:click")).a((long) i));
            if (this.g != null) {
                this.g.c();
                return;
            }
            return;
        }
        this.d.c();
    }

    public void a(int i, String str) {
        this.d.a(i, a(str));
        if (this.f != null) {
            this.f.a(i, str);
        }
        if (this.g != null) {
            this.g.b();
        }
    }

    public void f() {
        if (this.f != null) {
            this.f.b(BuildConfig.VERSION_NAME);
            this.d.d();
            this.d.setAddChoiceVisible(this.f.a().size() < 4);
        }
    }

    public void g() {
        if (this.f != null) {
            this.d.a(b(this.f.b()), (long) this.a, (long) this.b);
        }
    }

    public void a(long j) {
        if (this.f != null) {
            this.f.a(String.valueOf(j));
            if (this.g != null) {
                this.g.b();
            }
        }
    }

    public void h() {
        if (this.f != null) {
            this.e.a(this.f.c() != null);
        }
    }

    public static int a(String str) {
        String normalize = Normalizer.normalize(str, Form.NFC);
        return 25 - normalize.codePointCount(0, normalize.length());
    }
}
