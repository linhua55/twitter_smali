.class Lcom/twitter/android/moments/ui/fullscreen/gp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/model/moments/viewmodels/a;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/dt;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/gl;

.field private final g:Lcom/twitter/android/moments/data/ae;

.field private final h:Lcom/twitter/android/moments/data/bo;

.field private final i:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lahd;

.field private final k:Lcom/twitter/android/moments/ui/fullscreen/fy;

.field private final l:Lcom/twitter/android/moments/ui/fullscreen/w;

.field private final m:Lcom/twitter/android/moments/ui/fullscreen/gh;

.field private final n:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final o:Lcom/twitter/android/moments/ui/fullscreen/ew;

.field private final p:Lcin;

.field private final q:Lcom/twitter/android/moments/ui/fullscreen/cv;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/android/moments/ui/fullscreen/dt;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lahd;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gh;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/LayoutInflater;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/ui/fullscreen/dt;",
            "Lcom/twitter/android/moments/data/ae;",
            "Lcom/twitter/android/moments/data/bo;",
            "Lcom/twitter/android/moments/ui/fullscreen/ei;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lahd;",
            "Lcom/twitter/android/moments/ui/fullscreen/fy;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/gh;",
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;",
            "Lcin;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    .line 61
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->b:Lcom/twitter/model/moments/viewmodels/a;

    .line 62
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->d:Lcom/twitter/android/moments/ui/fullscreen/dt;

    .line 63
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->g:Lcom/twitter/android/moments/data/ae;

    .line 64
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    .line 65
    iput-object p8, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->f:Lcom/twitter/android/moments/ui/fullscreen/gl;

    .line 66
    iput-object p9, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->i:Lcom/twitter/util/x;

    .line 67
    iput-object p10, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->j:Lahd;

    .line 68
    iput-object p11, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->k:Lcom/twitter/android/moments/ui/fullscreen/fy;

    .line 69
    iput-object p12, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->l:Lcom/twitter/android/moments/ui/fullscreen/w;

    .line 70
    iput-object p13, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->m:Lcom/twitter/android/moments/ui/fullscreen/gh;

    .line 71
    iput-object p14, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->n:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 72
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->h:Lcom/twitter/android/moments/data/bo;

    .line 73
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->o:Lcom/twitter/android/moments/ui/fullscreen/ew;

    .line 74
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->p:Lcin;

    .line 75
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->q:Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/moments/core/ui/widget/sectionpager/d;
    .locals 11

    .prologue
    .line 84
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/i;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/twitter/model/moments/viewmodels/i;

    .line 86
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/i;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->c:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v1, v2, :cond_0

    .line 88
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/gc;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/i;Lcom/twitter/android/moments/ui/fullscreen/gp;)V

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/gb;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/gb;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/i;Lcom/twitter/android/moments/ui/fullscreen/gp;)V

    move-object v0, v1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->b:Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    const/4 v2, 0x0

    .line 98
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->g:Lcom/twitter/android/moments/data/ae;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->h:Lcom/twitter/android/moments/data/bo;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->j:Lahd;

    .line 102
    invoke-virtual {v5}, Lahd;->e()Lahp;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->m:Lcom/twitter/android/moments/ui/fullscreen/gh;

    iget-object v7, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->b:Lcom/twitter/model/moments/viewmodels/a;

    .line 103
    invoke-virtual {v7}, Lcom/twitter/model/moments/viewmodels/a;->e()Lcrc;

    move-result-object v9

    move-object v7, p1

    .line 101
    invoke-static/range {v0 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/bo;->a(Landroid/content/Context;Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;Lahp;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/ui/fullscreen/gh;Lcrc;)Lcom/twitter/android/moments/ui/fullscreen/bo;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_4
    invoke-static {v1}, Lcey;->a(Lcom/twitter/model/moments/ad;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/bu;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    .line 106
    invoke-static {v2}, Laju;->a(Landroid/view/LayoutInflater;)Laju;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->g:Lcom/twitter/android/moments/data/ae;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->j:Lahd;

    .line 107
    invoke-virtual {v4}, Lahd;->f()Lahp;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->k:Lcom/twitter/android/moments/ui/fullscreen/fy;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->d:Lcom/twitter/android/moments/ui/fullscreen/dt;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/fullscreen/bu;-><init>(Lcom/twitter/model/moments/ad;Laju;Lcom/twitter/android/moments/data/ae;Lahp;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    goto :goto_0

    .line 110
    :cond_5
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    .line 111
    invoke-static {v1}, Laju;->b(Landroid/view/LayoutInflater;)Laju;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->k:Lcom/twitter/android/moments/ui/fullscreen/fy;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->d:Lcom/twitter/android/moments/ui/fullscreen/dt;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/fk;-><init>(Laju;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    goto :goto_0

    :cond_6
    move-object v2, p1

    .line 115
    check-cast v2, Lcom/twitter/model/moments/viewmodels/y;

    .line 116
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/gq;->a:[I

    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/y;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/gz;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    new-instance v4, Lakw;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    invoke-direct {v4, v5}, Lakw;-><init>(Landroid/view/LayoutInflater;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/moments/ui/fullscreen/gz;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lakw;)V

    goto/16 :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->f:Lcom/twitter/android/moments/ui/fullscreen/gl;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->i:Lcom/twitter/util/x;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->o:Lcom/twitter/android/moments/ui/fullscreen/ew;

    iget-object v7, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->p:Lcin;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->l:Lcom/twitter/android/moments/ui/fullscreen/w;

    iget-object v9, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->q:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static/range {v0 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/ia;->b(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/ia;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->f:Lcom/twitter/android/moments/ui/fullscreen/gl;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->i:Lcom/twitter/util/x;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->o:Lcom/twitter/android/moments/ui/fullscreen/ew;

    iget-object v7, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->p:Lcin;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->l:Lcom/twitter/android/moments/ui/fullscreen/w;

    iget-object v9, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->n:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v10, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->q:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static/range {v0 .. v10}, Lcom/twitter/android/moments/ui/fullscreen/q;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/q;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->e:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->f:Lcom/twitter/android/moments/ui/fullscreen/gl;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->i:Lcom/twitter/util/x;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->o:Lcom/twitter/android/moments/ui/fullscreen/ew;

    iget-object v7, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->p:Lcin;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->l:Lcom/twitter/android/moments/ui/fullscreen/w;

    iget-object v9, p0, Lcom/twitter/android/moments/ui/fullscreen/gp;->q:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static/range {v0 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/dc;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/dc;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
