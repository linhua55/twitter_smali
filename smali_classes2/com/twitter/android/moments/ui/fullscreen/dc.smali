.class Lcom/twitter/android/moments/ui/fullscreen/dc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/gn;
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/d;


# instance fields
.field private final b:Lcom/twitter/model/moments/viewmodels/y;

.field private final c:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/w;

.field private final e:Lrx/t;

.field private final f:Lakf;

.field private final g:Lakh;

.field private final h:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/twitter/android/moments/ui/fullscreen/hb;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lakf;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V
    .locals 3
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
            "Lakf;",
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/dd;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/dd;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dc;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->i:Lcom/twitter/util/y;

    .line 84
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->b:Lcom/twitter/model/moments/viewmodels/y;

    .line 85
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->c:Lcom/twitter/util/x;

    .line 86
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->d:Lcom/twitter/android/moments/ui/fullscreen/w;

    .line 87
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->e:Lrx/t;

    .line 88
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->g:Lakh;

    .line 89
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->f:Lakf;

    .line 90
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->h:Lcom/twitter/util/y;

    .line 91
    iput-object p8, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->j:Lcom/twitter/android/moments/ui/fullscreen/hb;

    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->g:Lakh;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->b:Lcom/twitter/model/moments/viewmodels/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->b:Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakh;->a(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/model/core/Tweet;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->h:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->i:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->f:Lakf;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/de;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/de;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dc;)V

    invoke-virtual {v0, v1}, Lakf;->a(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/dc;)Lakf;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->f:Lakf;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/dc;
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
            "Lcom/twitter/android/moments/ui/fullscreen/dc;"
        }
    .end annotation

    .prologue
    .line 58
    .line 59
    invoke-static {p1}, Lakf;->a(Landroid/view/LayoutInflater;)Lakf;

    move-result-object v1

    .line 60
    invoke-virtual {p2}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/twitter/model/core/Tweet;

    .line 61
    new-instance v0, Lakh;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p4

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lakh;-><init>(Lakf;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/gl;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 66
    invoke-virtual {v1}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lakf;->f()Lcav;

    move-result-object v3

    .line 65
    invoke-static {p0, v2, v7, p3, v3}, Lcom/twitter/android/moments/ui/fullscreen/hb;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcav;)Lcom/twitter/android/moments/ui/fullscreen/hb;

    move-result-object v10

    .line 68
    new-instance v9, Lcom/twitter/android/moments/ui/fullscreen/bm;

    .line 69
    invoke-virtual {v1}, Lakf;->c()Lcom/twitter/android/moments/ui/fullscreen/bl;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/twitter/android/moments/ui/fullscreen/bm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bl;)V

    .line 70
    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/dc;

    .line 71
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v6

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/moments/ui/fullscreen/dc;-><init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lakf;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V

    .line 70
    return-object v2
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/dc;)Lcom/twitter/android/moments/ui/fullscreen/w;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->d:Lcom/twitter/android/moments/ui/fullscreen/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->h:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 123
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->i:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 124
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->j:Lcom/twitter/android/moments/ui/fullscreen/hb;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/hb;->a()V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->g:Lakh;

    invoke-virtual {v0}, Lakh;->c()V

    .line 126
    return-void
.end method

.method public b()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->f:Lakf;

    invoke-virtual {v0}, Lakf;->b()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->e:Lrx/t;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dc;->f:Lakf;

    invoke-virtual {v0}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
