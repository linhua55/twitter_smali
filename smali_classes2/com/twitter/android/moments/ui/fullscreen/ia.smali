.class Lcom/twitter/android/moments/ui/fullscreen/ia;
.super Lcom/twitter/android/moments/ui/fullscreen/dc;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/ge;


# instance fields
.field private final b:Lalj;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lalj;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/y;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lrx/t;",
            "Lalj;",
            "Lakh;",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/hb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .line 68
    invoke-virtual {p5}, Lalj;->d()Lakf;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/moments/ui/fullscreen/dc;-><init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lakf;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V

    .line 70
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/ia;->b:Lalj;

    .line 71
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/ia;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/LayoutInflater;",
            "Lcom/twitter/model/moments/viewmodels/y;",
            "Lcom/twitter/android/moments/ui/fullscreen/ei;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;",
            "Lcin;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/ia;"
        }
    .end annotation

    .prologue
    .line 39
    .line 40
    invoke-static {p1}, Lakf;->a(Landroid/view/LayoutInflater;)Lakf;

    move-result-object v1

    .line 41
    invoke-virtual {p2}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/twitter/model/core/Tweet;

    .line 42
    new-instance v10, Lalj;

    invoke-direct {v10, v1, v7}, Lalj;-><init>(Lakf;Lcom/twitter/model/core/Tweet;)V

    .line 44
    new-instance v0, Lakh;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p4

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lakh;-><init>(Lakf;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/gl;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 50
    invoke-virtual {v1}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 51
    invoke-virtual {v1}, Lakf;->f()Lcav;

    move-result-object v3

    .line 49
    invoke-static {p0, v2, v7, p3, v3}, Lcom/twitter/android/moments/ui/fullscreen/hb;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcav;)Lcom/twitter/android/moments/ui/fullscreen/hb;

    move-result-object v9

    .line 52
    new-instance v8, Lcom/twitter/android/moments/ui/fullscreen/bm;

    .line 53
    invoke-virtual {v1}, Lakf;->c()Lcom/twitter/android/moments/ui/fullscreen/bl;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/twitter/android/moments/ui/fullscreen/bm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bl;)V

    .line 54
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ia;

    .line 55
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v5

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object v6, v10

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/ia;-><init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lalj;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ia;->b:Lalj;

    invoke-virtual {v0, p1}, Lalj;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 86
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ia;->b:Lalj;

    invoke-virtual {v0}, Lalj;->b()V

    .line 81
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ia;->b:Lalj;

    invoke-virtual {v0}, Lalj;->a()V

    .line 76
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ia;->b:Lalj;

    invoke-virtual {v0}, Lalj;->c()V

    .line 91
    return-void
.end method
