.class public Lcom/twitter/android/moments/ui/fullscreen/q;
.super Lcom/twitter/android/moments/ui/fullscreen/dc;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final c:Lcom/twitter/model/moments/viewmodels/y;

.field private final d:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/res/Resources;

.field private final g:Lajk;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lajk;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;Lcom/twitter/android/moments/ui/fullscreen/ab;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/twitter/model/moments/viewmodels/y;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lrx/t;",
            "Lajk;",
            "Lakh;",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/hb;",
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .line 96
    invoke-virtual/range {p6 .. p6}, Lajk;->b()Lakf;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 95
    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/dc;-><init>(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lakf;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;)V

    .line 30
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/r;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/r;-><init>(Lcom/twitter/android/moments/ui/fullscreen/q;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->d:Lcom/twitter/util/y;

    .line 41
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/s;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/s;-><init>(Lcom/twitter/android/moments/ui/fullscreen/q;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->e:Lcom/twitter/util/y;

    .line 98
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->f:Landroid/content/res/Resources;

    .line 99
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->b:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 100
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->c:Lcom/twitter/model/moments/viewmodels/y;

    .line 101
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->g:Lajk;

    .line 102
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->b:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->d:Lcom/twitter/util/y;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->e:Lcom/twitter/util/y;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 103
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/q;
    .locals 17
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
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/q;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 67
    invoke-static/range {p1 .. p1}, Lakf;->a(Landroid/view/LayoutInflater;)Lakf;

    move-result-object v3

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/twitter/model/core/Tweet;

    .line 69
    new-instance v2, Lakh;

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lakh;-><init>(Lakf;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/gl;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 72
    new-instance v12, Lajk;

    invoke-direct {v12, v3}, Lajk;-><init>(Lakf;)V

    .line 76
    invoke-virtual {v3}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v4

    .line 77
    invoke-virtual {v3}, Lakf;->f()Lcav;

    move-result-object v5

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v9, v1, v5}, Lcom/twitter/android/moments/ui/fullscreen/hb;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcav;)Lcom/twitter/android/moments/ui/fullscreen/hb;

    move-result-object v15

    .line 78
    new-instance v14, Lcom/twitter/android/moments/ui/fullscreen/bm;

    .line 79
    invoke-virtual {v3}, Lakf;->c()Lcom/twitter/android/moments/ui/fullscreen/bl;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/twitter/android/moments/ui/fullscreen/bm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bl;)V

    .line 80
    new-instance v6, Lcom/twitter/android/moments/ui/fullscreen/q;

    .line 81
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v11

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object v13, v2

    move-object/from16 v16, p9

    invoke-direct/range {v6 .. v16}, Lcom/twitter/android/moments/ui/fullscreen/q;-><init>(Landroid/content/res/Resources;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/w;Lrx/t;Lajk;Lakh;Lcom/twitter/util/y;Lcom/twitter/android/moments/ui/fullscreen/hb;Lcom/twitter/android/moments/ui/fullscreen/ab;)V

    .line 80
    return-object v6
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/q;)Lcom/twitter/model/moments/viewmodels/y;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->c:Lcom/twitter/model/moments/viewmodels/y;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/q;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/q;)Lajk;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->g:Lajk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->b:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->d:Lcom/twitter/util/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/q;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 108
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->a()V

    .line 109
    return-void
.end method

.method public bridge synthetic b()Lrx/o;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->b()Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->d()V

    return-void
.end method

.method public bridge synthetic e()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
