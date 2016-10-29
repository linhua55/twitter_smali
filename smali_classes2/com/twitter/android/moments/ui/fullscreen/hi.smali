.class public Lcom/twitter/android/moments/ui/fullscreen/hi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/ui/image/f;
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/media/ui/image/f",
        "<",
        "Lcom/twitter/media/ui/image/MediaImageView;",
        ">;",
        "Lcom/twitter/moments/core/ui/widget/sectionpager/a;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/model/moments/viewmodels/ac;

.field private final c:Lajj;

.field private final d:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/ft;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/z;

.field private final g:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/android/moments/ui/fullscreen/bs;
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

.field private final i:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final j:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/twitter/android/moments/ui/fullscreen/n;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/twitter/android/moments/ui/fullscreen/hi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/ui/fullscreen/hi;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/twitter/model/moments/viewmodels/ac;Lajj;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/android/moments/ui/fullscreen/z;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/ab;Lahd;FLcom/twitter/android/moments/ui/fullscreen/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/ac;",
            "Lajj;",
            "Lcom/twitter/android/moments/ui/fullscreen/ft;",
            "Lcom/twitter/android/moments/ui/fullscreen/z;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            "Lahd;",
            "F",
            "Lcom/twitter/android/moments/ui/fullscreen/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hj;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/hj;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hi;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->j:Lcom/twitter/util/y;

    .line 62
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hk;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/hk;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hi;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->k:Lcom/twitter/util/y;

    .line 87
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    .line 88
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->c:Lajj;

    .line 89
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->e:Lcom/twitter/android/moments/ui/fullscreen/ft;

    .line 90
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->f:Lcom/twitter/android/moments/ui/fullscreen/z;

    .line 91
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->d:Lcom/twitter/util/x;

    .line 92
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 93
    iput-object p10, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->l:Lcom/twitter/android/moments/ui/fullscreen/n;

    .line 94
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/da;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->c:Lajj;

    invoke-virtual {v1}, Lajj;->c()Lajx;

    move-result-object v1

    invoke-direct {v0, v1, p3, p8}, Lcom/twitter/android/moments/ui/fullscreen/da;-><init>(Laln;Lcom/twitter/android/moments/ui/fullscreen/ft;Lahd;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->g:Lcom/twitter/util/y;

    .line 96
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->i:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->i:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->j:Lcom/twitter/util/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->k:Lcom/twitter/util/y;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->l:Lcom/twitter/android/moments/ui/fullscreen/n;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/n;->a()V

    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->i:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/model/av/Audio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->f:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 103
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/ac;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 117
    sget-boolean v1, Lcom/twitter/android/moments/ui/fullscreen/hi;->a:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->i:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/k;

    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/af;

    .line 109
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/audio/AudioCardError;

    invoke-direct {v4, p1, v0}, Lcom/twitter/android/moments/ui/fullscreen/af;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/av/audio/AudioCardError;)V

    invoke-direct {v3, v4}, Lcom/twitter/android/moments/ui/fullscreen/k;-><init>(Lcom/twitter/android/moments/ui/fullscreen/af;)V

    .line 107
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->b:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 112
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 119
    sget-boolean v1, Lcom/twitter/android/moments/ui/fullscreen/hi;->a:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_3
    invoke-virtual {v0}, Lclw;->N()Lclm;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "player_image"

    invoke-static {v1, v0}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->c:Lajj;

    .line 123
    invoke-virtual {v1}, Lajj;->c()Lajx;

    move-result-object v2

    .line 124
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v2, p0}, Lajx;->a(Lcom/twitter/media/ui/image/f;)V

    .line 126
    new-instance v1, Lcom/twitter/media/request/b;

    iget-object v3, v0, Lcln;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/twitter/media/request/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lajx;->a(Lcom/twitter/media/request/b;)V

    .line 127
    iget-object v1, p1, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    invoke-static {v1, p9}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;F)Lcom/twitter/model/moments/g;

    move-result-object v3

    .line 130
    if-nez v3, :cond_5

    .line 131
    iget v1, v0, Lcln;->b:I

    iget v0, v0, Lcln;->c:I

    invoke-static {v1, v0}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v1

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_1
    invoke-virtual {v2, v1, v0}, Lajx;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 139
    :cond_4
    return-void

    .line 134
    :cond_5
    iget-object v1, v3, Lcom/twitter/model/moments/g;->f:Lcom/twitter/util/math/Size;

    .line 135
    invoke-virtual {v3}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lajj;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    iget-boolean v1, p1, Lcom/twitter/model/moments/k;->h:Z

    if-eqz v1, :cond_0

    .line 182
    const v1, 0x7f0401e6

    .line 184
    invoke-interface {p2}, Lcom/twitter/android/moments/ui/fullscreen/gn;->b()Lrx/o;

    move-result-object v2

    .line 183
    invoke-static {v0, v1, v2, v3}, Lajx;->a(Landroid/view/LayoutInflater;ILrx/o;Z)Lajx;

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Lajj;

    invoke-virtual {v0}, Lajx;->a()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lajj;-><init>(Landroid/view/ViewGroup;Lajx;)V

    return-object v1

    .line 187
    :cond_0
    const v1, 0x7f0401d2

    invoke-static {v0, v1, v3}, Lajx;->a(Landroid/view/LayoutInflater;IZ)Lajx;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/hi;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/model/moments/viewmodels/ac;",
            "Lcom/twitter/android/moments/ui/fullscreen/ab;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lahd;",
            "Lcom/twitter/android/moments/ui/fullscreen/cm;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/hi;"
        }
    .end annotation

    .prologue
    .line 149
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v3, v1}, Lcom/twitter/android/moments/ui/fullscreen/hi;->a(Landroid/content/Context;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lajj;

    move-result-object v15

    .line 151
    invoke-virtual {v15}, Lajj;->c()Lajx;

    move-result-object v3

    invoke-virtual {v3}, Lajx;->b()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v4

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f11000a

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 154
    new-instance v16, Lcom/twitter/android/moments/ui/fullscreen/ft;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v3, v5}, Lcom/twitter/android/moments/ui/fullscreen/ft;-><init>(Landroid/view/View;FI)V

    .line 156
    invoke-virtual {v15}, Lajj;->d()Landroid/view/View;

    move-result-object v3

    .line 157
    const v5, 0x7f1304e5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 158
    const v5, 0x7f1304e4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 159
    const v6, 0x7f1304e2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 160
    const v6, 0x7f1304e3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 161
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/l;

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/ac;->h()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v10

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p4

    invoke-direct/range {v3 .. v12}, Lcom/twitter/android/moments/ui/fullscreen/l;-><init>(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/content/res/Resources;Landroid/widget/ProgressBar;Lcom/twitter/model/moments/MomentPageDisplayMode;Ljava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/bs;)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/ac;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/util/math/Size;->g()F

    move-result v13

    .line 167
    new-instance v14, Lcom/twitter/android/moments/ui/fullscreen/n;

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v14, v15, v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/n;-><init>(Lajj;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/model/moments/viewmodels/ac;)V

    .line 170
    sget-boolean v5, Lcom/twitter/android/moments/ui/fullscreen/hi;->a:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 171
    :cond_0
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/hi;

    move-object/from16 v5, p1

    move-object v6, v15

    move-object/from16 v7, v16

    move-object v8, v3

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v14}, Lcom/twitter/android/moments/ui/fullscreen/hi;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lajj;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/android/moments/ui/fullscreen/z;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/ab;Lahd;FLcom/twitter/android/moments/ui/fullscreen/n;)V

    return-object v4
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/model/moments/viewmodels/ac;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hi;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/android/moments/ui/fullscreen/bs;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hi;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/android/moments/ui/fullscreen/n;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->l:Lcom/twitter/android/moments/ui/fullscreen/n;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->c:Lajj;

    invoke-virtual {v0}, Lajj;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->e:Lcom/twitter/android/moments/ui/fullscreen/ft;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ft;->a(F)V

    .line 222
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->n:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->d:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 224
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/ImageResponse;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/hi;->a(Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public a(Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/media/request/ImageResponse;)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->e:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 231
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p2}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    iget-boolean v0, v0, Lcom/twitter/model/moments/k;->h:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->c:Lajj;

    invoke-virtual {v0}, Lajj;->c()Lajx;

    move-result-object v1

    .line 234
    invoke-virtual {p2}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lajx;->a(Landroid/graphics/Bitmap;)Lrx/w;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 237
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->d:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->g:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 202
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->h:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->c:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 203
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->d:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->g:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 209
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->i:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->j:Lcom/twitter/util/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->k:Lcom/twitter/util/y;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 214
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->f:Lcom/twitter/android/moments/ui/fullscreen/z;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/z;->g()V

    .line 215
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hi;->l:Lcom/twitter/android/moments/ui/fullscreen/n;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/n;->b()V

    .line 216
    return-void
.end method
