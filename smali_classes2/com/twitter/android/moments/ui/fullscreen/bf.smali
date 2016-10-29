.class public Lcom/twitter/android/moments/ui/fullscreen/bf;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/gp;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/dm;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/fn;

.field private final h:Lcom/twitter/app/common/util/t;

.field private final i:Lahd;

.field private final j:Lcom/twitter/android/moments/ui/fullscreen/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/android/moments/ui/fullscreen/w;

.field private final l:Lcom/twitter/android/moments/ui/fullscreen/gl;

.field private final m:Lcom/twitter/android/moments/ui/fullscreen/ew;

.field private final n:Lcin;

.field private final o:Lcom/twitter/android/moments/ui/fullscreen/cv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/gp;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/gp;",
            "Lcom/twitter/android/moments/ui/fullscreen/dm;",
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            "Lcom/twitter/android/moments/ui/fullscreen/cm;",
            "Lcom/twitter/app/common/util/t;",
            "Lcom/twitter/android/moments/ui/fullscreen/fn;",
            "Lahd;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;",
            "Lcin;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->b:Lcom/twitter/util/x;

    .line 70
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->c:Lcom/twitter/android/moments/ui/fullscreen/gp;

    .line 71
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->d:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 72
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    .line 73
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->e:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 74
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 75
    iput-object p8, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->g:Lcom/twitter/android/moments/ui/fullscreen/fn;

    .line 76
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->h:Lcom/twitter/app/common/util/t;

    .line 77
    iput-object p9, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->i:Lahd;

    .line 78
    iput-object p10, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 79
    iput-object p11, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->k:Lcom/twitter/android/moments/ui/fullscreen/w;

    .line 80
    iput-object p12, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->l:Lcom/twitter/android/moments/ui/fullscreen/gl;

    .line 81
    iput-object p13, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->m:Lcom/twitter/android/moments/ui/fullscreen/ew;

    .line 82
    iput-object p14, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->n:Lcin;

    .line 83
    iput-object p15, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->o:Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/bf;)Lcom/twitter/android/moments/ui/fullscreen/gp;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->c:Lcom/twitter/android/moments/ui/fullscreen/gp;

    return-object v0
.end method


# virtual methods
.method a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/moments/core/ui/widget/sectionpager/d;)Lcom/twitter/moments/core/ui/widget/sectionpager/a;
    .locals 21

    .prologue
    .line 145
    const-class v2, Lcom/twitter/android/moments/ui/fullscreen/gn;

    sget-object v3, Lcom/twitter/android/moments/ui/fullscreen/gn;->a:Lcom/twitter/android/moments/ui/fullscreen/gn;

    .line 146
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/twitter/android/moments/ui/fullscreen/gn;

    .line 148
    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/bi;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized moment page type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object/from16 v3, p1

    .line 150
    check-cast v3, Lcom/twitter/model/moments/viewmodels/ac;

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->e:Lcom/twitter/android/moments/ui/fullscreen/ab;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->b:Lcom/twitter/util/x;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->i:Lahd;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/hi;->a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/hi;

    move-result-object v2

    .line 184
    :goto_0
    return-object v2

    .line 156
    :pswitch_1
    new-instance v5, Lcom/twitter/android/moments/viewmodels/an;

    move-object/from16 v2, p1

    check-cast v2, Lcom/twitter/model/moments/viewmodels/aa;

    invoke-direct {v5, v2}, Lcom/twitter/android/moments/viewmodels/an;-><init>(Lcom/twitter/model/moments/viewmodels/aa;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->b:Lcom/twitter/util/x;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->i:Lahd;

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/co;->a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/co;

    move-result-object v2

    goto :goto_0

    .line 163
    :pswitch_2
    new-instance v5, Lcom/twitter/android/moments/viewmodels/ak;

    move-object/from16 v2, p1

    check-cast v2, Lcom/twitter/model/moments/viewmodels/q;

    invoke-direct {v5, v2}, Lcom/twitter/android/moments/viewmodels/ak;-><init>(Lcom/twitter/model/moments/viewmodels/q;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->b:Lcom/twitter/util/x;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->i:Lahd;

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/co;->a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/co;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    move-object/from16 v3, p1

    .line 168
    check-cast v3, Lcom/twitter/model/moments/viewmodels/w;

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->k:Lcom/twitter/android/moments/ui/fullscreen/w;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->l:Lcom/twitter/android/moments/ui/fullscreen/gl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->m:Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->n:Lcin;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->o:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/hu;->a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/w;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/hu;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    move-object/from16 v3, p1

    .line 174
    check-cast v3, Lcom/twitter/model/moments/viewmodels/af;

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->k:Lcom/twitter/android/moments/ui/fullscreen/w;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->l:Lcom/twitter/android/moments/ui/fullscreen/gl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->m:Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->n:Lcin;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->o:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/hu;->a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/af;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/hu;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v11, p1

    .line 180
    check-cast v11, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    .line 182
    new-instance v17, Lcom/twitter/android/moments/ui/fullscreen/gd;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/gd;-><init>(Lcom/twitter/moments/core/ui/widget/sectionpager/d;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->b:Lcom/twitter/util/x;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->d:Lcom/twitter/android/moments/ui/fullscreen/dm;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->h:Lcom/twitter/app/common/util/t;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->g:Lcom/twitter/android/moments/ui/fullscreen/fn;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/bf;->i:Lahd;

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    invoke-static/range {v10 .. v20}, Lcom/twitter/android/moments/ui/fullscreen/hl;->a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/gd;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/hl;

    move-result-object v2

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/lang/String;)Lcom/twitter/moments/core/ui/widget/sectionpager/a;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hh;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->j:Lcom/twitter/android/moments/ui/fullscreen/bs;

    invoke-direct {v0, v1, v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/hh;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/bs;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/moments/core/ui/widget/sectionpager/b;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/bi;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized moment page type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_0
    new-instance v0, Lcom/twitter/moments/core/ui/widget/sectionpager/b;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/bj;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bf;->a:Landroid/app/Activity;

    check-cast p1, Lcom/twitter/model/moments/viewmodels/i;

    invoke-direct {v1, v2, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/bj;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/i;)V

    invoke-direct {v0, v1}, Lcom/twitter/moments/core/ui/widget/sectionpager/b;-><init>(Lcom/twitter/util/object/c;)V

    .line 128
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/twitter/moments/core/ui/widget/sectionpager/b;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/bh;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/bh;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-direct {v0, v1}, Lcom/twitter/moments/core/ui/widget/sectionpager/b;-><init>(Lcom/twitter/util/object/c;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/moments/core/ui/widget/sectionpager/c;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v1

    .line 93
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 94
    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/bf;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/moments/core/ui/widget/sectionpager/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/twitter/moments/core/ui/widget/sectionpager/c;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/bg;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/bg;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/moments/core/ui/widget/sectionpager/c;-><init>(Ljava/util/List;Lcom/twitter/util/object/i;)V

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/moments/core/ui/widget/sectionpager/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->g()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 110
    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/bf;->a(Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/moments/core/ui/widget/sectionpager/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    return-object v1
.end method
