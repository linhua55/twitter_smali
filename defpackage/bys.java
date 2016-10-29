package defpackage;

import bus;
import com.twitter.config.c;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: bys */
public class bys {
    private static bys a;
    private String b;
    private boolean c;
    private boolean d;

    public static bys a() {
        if (a == null) {
            a = new bys();
        }
        return a;
    }

    public bys() {
        this.b = "permanent_hero";
        this.c = true;
        h.a();
        if (!bus.a().c()) {
            this.d = c.c("moments_guide_v2_4379");
            if (this.d) {
                if (c.a("moments_guide_v2_4379", new String[]{"no_categories_dynamic_hero", "categories_dynamic_hero"})) {
                    this.b = "dynamic_hero";
                } else {
                    if (c.a("moments_guide_v2_4379", new String[]{"no_categories_permanent_hero", "categories_permanent_hero"})) {
                        this.b = "permanent_hero";
                    }
                }
                this.c = c.a("moments_guide_v2_4379", new String[]{"categories_permanent_hero", "categories_dynamic_hero"});
            }
        }
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }
}
