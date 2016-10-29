.class public Lcom/twitter/android/moments/ui/fullscreen/ew;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/view/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final d:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/util/object/c;II)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/view/m;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->b:Lcom/twitter/util/object/c;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->c:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->d:I

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/fullscreen/ew;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/ex;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/fullscreen/ex;-><init>()V

    invoke-static {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Landroid/content/Context;Lcom/twitter/util/object/c;)Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/util/object/c;)Lcom/twitter/android/moments/ui/fullscreen/ew;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/view/m;",
            ">;)",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/ew;

    const v1, 0x7f1200e0

    const v2, 0x7f1200e1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ew;-><init>(Landroid/content/Context;Lcom/twitter/util/object/c;II)V

    return-object v0
.end method

.method private static a(Lcom/twitter/model/moments/viewmodels/y;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/y;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    .line 127
    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/ey;->a:[I

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/y;->p()Lcom/twitter/model/moments/z;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/y;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 71
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/y;->u()Lcom/twitter/model/moments/u;

    move-result-object v5

    .line 72
    new-instance v1, Lcom/twitter/model/core/bo;

    .line 73
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    invoke-virtual {v1}, Lcom/twitter/model/core/bo;->e()Lcom/twitter/model/core/bo;

    move-result-object v6

    .line 83
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v7

    .line 85
    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/core/bm;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Iterable;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Lczz;->a([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cx;

    .line 89
    iget v2, v1, Lcom/twitter/model/core/cx;->f:I

    invoke-virtual {v5, v2}, Lcom/twitter/model/moments/u;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    instance-of v2, v1, Lcom/twitter/model/core/MediaEntity;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 92
    check-cast v2, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {v6, v2}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/model/core/bo;

    .line 96
    :goto_1
    iget v1, v1, Lcom/twitter/model/core/cx;->g:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    move v3, v1

    .line 98
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v6, v1}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {p1}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Lcom/twitter/model/moments/viewmodels/y;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 107
    :goto_3
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->b:Lcom/twitter/util/object/c;

    invoke-interface {v1, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/m;

    .line 108
    invoke-virtual {v6}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/bm;

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 111
    invoke-static {v2}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v1}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->c:I

    .line 114
    invoke-virtual {v0, v2}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->d:I

    .line 115
    invoke-virtual {v0, v2}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v10}, Lcom/twitter/library/view/o;->c(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 119
    invoke-static {p2}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 121
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ew;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-static {v2, v1, v0, v10, p2}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;ZLandroid/view/View;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v2, v1

    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move-object v2, v4

    goto :goto_3
.end method
