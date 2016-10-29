.class public Ltv/periscope/android/ui/chat/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ltv/periscope/android/ui/chat/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/ui/chat/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private final d:Ltv/periscope/android/ui/chat/x;

.field private final e:Ltv/periscope/android/ui/chat/g;

.field private final f:Ltv/periscope/android/view/bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/periscope/android/view/bf",
            "<",
            "Ltv/periscope/android/ui/chat/d;",
            "Ltv/periscope/model/chat/Message;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ltv/periscope/model/chat/MessageType;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/ui/chat/x;Ltv/periscope/android/view/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/periscope/android/ui/chat/x;",
            "Ltv/periscope/android/view/bf",
            "<",
            "Ltv/periscope/android/ui/chat/d;",
            "Ltv/periscope/model/chat/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    .line 67
    iput-object p1, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->c:Landroid/os/Handler;

    .line 70
    iput-object p2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    .line 71
    new-instance v0, Ltv/periscope/android/ui/chat/g;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/chat/g;-><init>(Ltv/periscope/android/ui/chat/e;I)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    .line 72
    iput-object p3, p0, Ltv/periscope/android/ui/chat/e;->f:Ltv/periscope/android/view/bf;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/e;->setHasStableIds(Z)V

    .line 74
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return-object v0

    .line 269
    :cond_0
    sget-object v1, Ltv/periscope/android/ui/chat/f;->c:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/MessageType$ReportType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/p;->ps__moderator_negative_spam:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/p;->ps__convicted_abuse:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/widget/TextView;II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 333
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 335
    return-void
.end method

.method private a(Ltv/periscope/android/ui/chat/d;Ltv/periscope/android/ui/chat/j;I)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->f:Ltv/periscope/android/view/bf;

    iget-object v1, p2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-interface {v0, p1, v1, p3}, Ltv/periscope/android/view/bf;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    .line 386
    iput-object p2, p1, Ltv/periscope/android/ui/chat/d;->j:Ltv/periscope/android/ui/chat/j;

    .line 387
    return-void
.end method

.method private c(Ltv/periscope/model/chat/Message;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->z()Ltv/periscope/model/chat/MessageType$ReportType;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->B()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    sget-object v3, Ltv/periscope/android/ui/chat/f;->d:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->G()Ltv/periscope/model/chat/MessageType$SentenceType;

    move-result-object v4

    invoke-virtual {v4}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 327
    :goto_0
    return-object v0

    .line 286
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_suspended_with_body_and_reason:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_disabled_with_body_and_reason:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_suspended_with_body_and_reason:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_disabled_with_body_and_reason:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_0
    if-eqz v1, :cond_1

    .line 302
    sget-object v2, Ltv/periscope/android/ui/chat/f;->d:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->G()Ltv/periscope/model/chat/MessageType$SentenceType;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 304
    :pswitch_4
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v2, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_suspended_with_reason:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_5
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v2, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_disabled_with_reason:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_6
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v2, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_suspended_with_reason:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_7
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v2, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_disabled_with_reason:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :cond_1
    sget-object v1, Ltv/periscope/android/ui/chat/f;->d:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->G()Ltv/periscope/model/chat/MessageType$SentenceType;

    move-result-object v2

    invoke-virtual {v2}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 318
    :pswitch_8
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v1, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_suspended:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :pswitch_9
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v1, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_broadcast_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :pswitch_a
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v1, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_suspended:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :pswitch_b
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v1, Ltv/periscope/android/library/p;->ps__local_prompt_conviction_global_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 316
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a(Ltv/periscope/model/chat/Message;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 338
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->i()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Ldod;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->j()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v2, Ltv/periscope/android/library/p;->ps__username_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Ltv/periscope/android/ui/chat/j;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/j;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ltv/periscope/android/ui/chat/t;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 83
    packed-switch p2, :pswitch_data_0

    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_row:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    new-instance v0, Ltv/periscope/android/ui/chat/d;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_row_join:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    new-instance v0, Ltv/periscope/android/ui/chat/ak;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/ak;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_started_locally:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    new-instance v0, Ltv/periscope/android/ui/chat/t;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/t;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_share_screenshot:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    new-instance v0, Ltv/periscope/android/ui/chat/aj;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/aj;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__channel_info_prompt:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v0, Ltv/periscope/android/library/l;->text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__replay_skip_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Ltv/periscope/android/ui/chat/t;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/t;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_row_verdict:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    new-instance v0, Ltv/periscope/android/ui/chat/t;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/t;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__channel_info_prompt:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v0, Ltv/periscope/android/ui/chat/t;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/t;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_broadcast_tip:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v0, Ltv/periscope/android/ui/chat/t;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->d:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/chat/t;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 462
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/g;->b()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->h:Ltv/periscope/model/chat/MessageType;

    .line 464
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    .line 465
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/t;I)V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 128
    if-gez p2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p2}, Ltv/periscope/android/ui/chat/e;->a(I)Ltv/periscope/android/ui/chat/j;

    move-result-object v2

    .line 132
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    iget-object v3, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v3}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_1
    :goto_1
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->l:Ltv/periscope/model/y;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    iget-object v1, p1, Ltv/periscope/android/ui/chat/t;->l:Ltv/periscope/model/y;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/chat/g;->a(Ltv/periscope/model/y;)V

    .line 255
    :cond_2
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Ltv/periscope/android/ui/chat/j;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 257
    new-instance v0, Ltv/periscope/android/ui/chat/u;

    iget-object v1, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    iget-object v3, p1, Ltv/periscope/android/ui/chat/t;->k:Ltv/periscope/android/ui/chat/x;

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/ui/chat/u;-><init>(Landroid/view/View;Ltv/periscope/android/ui/chat/j;Ltv/periscope/android/ui/chat/x;)V

    .line 258
    invoke-virtual {p1}, Ltv/periscope/android/ui/chat/t;->getItemId()J

    move-result-wide v4

    invoke-virtual {v2}, Ltv/periscope/android/ui/chat/j;->c()I

    move-result v1

    invoke-static {v4, v5, v1}, Ltv/periscope/model/y;->a(JI)Ltv/periscope/model/y;

    move-result-object v1

    .line 259
    iput-object v1, p1, Ltv/periscope/android/ui/chat/t;->l:Ltv/periscope/model/y;

    .line 260
    iget-object v2, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    invoke-virtual {v2, v1, v0}, Ltv/periscope/android/ui/chat/g;->a(Ltv/periscope/model/y;Ltv/periscope/android/ui/chat/u;)V

    goto :goto_0

    :pswitch_0
    move-object v0, p1

    .line 135
    check-cast v0, Ltv/periscope/android/ui/chat/ak;

    .line 136
    iget-object v3, v0, Ltv/periscope/android/ui/chat/ak;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Ltv/periscope/android/library/i;->ps__dark_grey:I

    .line 137
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    iget-object v1, v0, Ltv/periscope/android/ui/chat/ak;->a:Landroid/widget/TextView;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v4, Ltv/periscope/android/library/p;->ps__broadcaster_kick_block:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v7, Ltv/periscope/android/library/p;->ps__username_format:I

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 139
    invoke-virtual {v9}, Ltv/periscope/model/chat/Message;->t()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 138
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, v0, Ltv/periscope/android/ui/chat/ak;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    move-object v0, p1

    .line 144
    check-cast v0, Ltv/periscope/android/ui/chat/ak;

    .line 145
    iget-object v3, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v3}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v3

    .line 146
    iget-object v4, v0, Ltv/periscope/android/ui/chat/ak;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    iget-object v3, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v3}, Ltv/periscope/model/chat/Message;->q()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 148
    iget-object v3, v0, Ltv/periscope/android/ui/chat/ak;->a:Landroid/widget/TextView;

    sget v4, Ltv/periscope/android/library/o;->ps__invited_num_followers_embolden:I

    iget-object v5, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 149
    invoke-virtual {v5}, Ltv/periscope/model/chat/Message;->q()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 150
    invoke-virtual {p0, v7}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v7}, Ltv/periscope/model/chat/Message;->q()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v1, v8, v9, v11}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 148
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_2
    iget-object v1, v0, Ltv/periscope/android/ui/chat/ak;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iput-object v2, v0, Ltv/periscope/android/ui/chat/ak;->c:Ltv/periscope/android/ui/chat/j;

    goto/16 :goto_1

    .line 153
    :cond_3
    iget-object v3, v0, Ltv/periscope/android/ui/chat/ak;->a:Landroid/widget/TextView;

    sget v4, Ltv/periscope/android/library/p;->ps__invited_followers:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 154
    invoke-virtual {p0, v6}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 153
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    move-object v0, p1

    .line 161
    check-cast v0, Ltv/periscope/android/ui/chat/ak;

    .line 162
    iget-object v3, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v3}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v3

    .line 163
    iget-object v4, v0, Ltv/periscope/android/ui/chat/ak;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    iget-object v3, v0, Ltv/periscope/android/ui/chat/ak;->a:Landroid/widget/TextView;

    sget v4, Ltv/periscope/android/library/p;->ps__shared_on_twitter:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 165
    invoke-virtual {p0, v6}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 164
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iput-object v2, v0, Ltv/periscope/android/ui/chat/ak;->c:Ltv/periscope/android/ui/chat/j;

    .line 167
    iget-object v0, v0, Ltv/periscope/android/ui/chat/ak;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_3
    move-object v0, p1

    .line 171
    check-cast v0, Ltv/periscope/android/ui/chat/ak;

    .line 173
    invoke-virtual {v2}, Ltv/periscope/android/ui/chat/j;->c()I

    move-result v3

    if-lez v3, :cond_4

    .line 174
    sget v3, Ltv/periscope/android/library/i;->ps__dark_grey:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 178
    :goto_3
    iget-object v3, v0, Ltv/periscope/android/ui/chat/ak;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    iget-object v1, v0, Ltv/periscope/android/ui/chat/ak;->a:Landroid/widget/TextView;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v4, Ltv/periscope/android/library/p;->ps__chat_join:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 180
    invoke-virtual {p0, v6}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 179
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iput-object v2, v0, Ltv/periscope/android/ui/chat/ak;->c:Ltv/periscope/android/ui/chat/j;

    .line 182
    iget-object v0, v0, Ltv/periscope/android/ui/chat/ak;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 176
    :cond_4
    iget-object v3, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v3}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v1

    goto :goto_3

    :pswitch_4
    move-object v0, p1

    .line 186
    check-cast v0, Ltv/periscope/android/ui/chat/d;

    .line 187
    invoke-direct {p0, v0, v2, p2}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/d;Ltv/periscope/android/ui/chat/j;I)V

    goto/16 :goto_1

    :pswitch_5
    move-object v0, p1

    .line 191
    check-cast v0, Ltv/periscope/android/ui/chat/aj;

    .line 192
    iget-object v1, v0, Ltv/periscope/android/ui/chat/aj;->a:Landroid/widget/TextView;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v4, Ltv/periscope/android/library/p;->ps__chat_share_screenshot_twitter:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iput-object v2, v0, Ltv/periscope/android/ui/chat/aj;->b:Ltv/periscope/android/ui/chat/j;

    goto/16 :goto_1

    .line 198
    :pswitch_6
    iget-object v0, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v0}, Ltv/periscope/model/chat/Message;->D()Ltv/periscope/model/chat/MessageType$VerdictType;

    move-result-object v3

    .line 199
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->moderation_verdict:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    iget-object v1, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v4, Ltv/periscope/android/library/l;->consequence:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    sget-object v4, Ltv/periscope/android/ui/chat/f;->a:[I

    invoke-virtual {v3}, Ltv/periscope/model/chat/MessageType$VerdictType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 219
    sget v3, Ltv/periscope/android/library/p;->ps__moderator_neutral:I

    sget v4, Ltv/periscope/android/library/i;->ps__grey:I

    invoke-direct {p0, v0, v3, v4}, Ltv/periscope/android/ui/chat/e;->a(Landroid/widget/TextView;II)V

    .line 220
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 203
    :pswitch_7
    sget v3, Ltv/periscope/android/library/p;->ps__moderator_positive:I

    sget v4, Ltv/periscope/android/library/i;->ps__blue:I

    invoke-direct {p0, v0, v3, v4}, Ltv/periscope/android/ui/chat/e;->a(Landroid/widget/TextView;II)V

    .line 204
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_8
    sget v3, Ltv/periscope/android/library/p;->ps__moderator_negative:I

    sget v4, Ltv/periscope/android/library/i;->ps__red:I

    invoke-direct {p0, v0, v3, v4}, Ltv/periscope/android/ui/chat/e;->a(Landroid/widget/TextView;II)V

    .line 209
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 213
    :pswitch_9
    sget v3, Ltv/periscope/android/library/p;->ps__moderator_negative_spam:I

    sget v4, Ltv/periscope/android/library/i;->ps__red:I

    invoke-direct {p0, v0, v3, v4}, Ltv/periscope/android/ui/chat/e;->a(Landroid/widget/TextView;II)V

    .line 214
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 227
    :pswitch_a
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->a:Landroid/content/Context;

    sget v3, Ltv/periscope/android/library/p;->ps__local_prompt_moderator_feedback:I

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v5}, Ltv/periscope/model/chat/Message;->C()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 232
    :pswitch_b
    iget-object v1, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    .line 233
    if-eqz v1, :cond_1

    .line 236
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v3, Ltv/periscope/android/library/l;->text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Ltv/periscope/android/ui/chat/e;->c(Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 240
    :pswitch_c
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 241
    iget-object v1, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v1}, Ltv/periscope/model/chat/Message;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 245
    :pswitch_d
    iget-object v0, p1, Ltv/periscope/android/ui/chat/t;->itemView:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->broadcast_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    .line 246
    iget-object v1, v2, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v1}, Ltv/periscope/model/chat/Message;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->setHtmlText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public b(Ltv/periscope/model/chat/Message;)V
    .locals 6

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    .line 409
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    new-instance v1, Ltv/periscope/android/ui/chat/j;

    iget-wide v2, p0, Ltv/periscope/android/ui/chat/e;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ltv/periscope/android/ui/chat/e;->g:J

    invoke-direct {v1, p1, v2, v3}, Ltv/periscope/android/ui/chat/j;-><init>(Ltv/periscope/model/chat/Message;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/e;->notifyItemInserted(I)V

    .line 457
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->h:Ltv/periscope/model/chat/MessageType;

    .line 458
    :cond_1
    :goto_1
    return-void

    .line 412
    :pswitch_1
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    sget-object v1, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->h:Ltv/periscope/model/chat/MessageType;

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 414
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/j;

    .line 415
    new-instance v2, Ltv/periscope/android/ui/chat/j;

    iget-wide v4, v0, Ltv/periscope/android/ui/chat/j;->b:J

    invoke-direct {v2, p1, v4, v5}, Ltv/periscope/android/ui/chat/j;-><init>(Ltv/periscope/model/chat/Message;J)V

    .line 416
    iget-object v3, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    invoke-virtual {v3}, Ltv/periscope/android/ui/chat/g;->c()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    invoke-virtual {v3}, Ltv/periscope/android/ui/chat/g;->a()Ltv/periscope/android/ui/chat/u;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/android/ui/chat/u;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    iget-wide v4, v0, Ltv/periscope/android/ui/chat/j;->b:J

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/j;->c()I

    move-result v3

    invoke-static {v4, v5, v3}, Ltv/periscope/model/y;->a(JI)Ltv/periscope/model/y;

    move-result-object v3

    .line 418
    iget-object v4, p0, Ltv/periscope/android/ui/chat/e;->e:Ltv/periscope/android/ui/chat/g;

    invoke-virtual {v4, v3}, Ltv/periscope/android/ui/chat/g;->a(Ltv/periscope/model/y;)V

    .line 420
    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ltv/periscope/android/ui/chat/j;->a(I)V

    .line 421
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {p0, v1}, Ltv/periscope/android/ui/chat/e;->notifyItemChanged(I)V

    .line 423
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/e;->h:Ltv/periscope/model/chat/MessageType;

    goto :goto_1

    .line 432
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->h:Ltv/periscope/model/chat/MessageType;

    sget-object v1, Ltv/periscope/model/chat/MessageType;->q:Ltv/periscope/model/chat/MessageType;

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 434
    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/j;

    .line 435
    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/j;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_1

    .line 444
    :pswitch_3
    iget v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    if-ltz v0, :cond_2

    iget v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    iget-object v1, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 445
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    iget v1, p0, Ltv/periscope/android/ui/chat/e;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/j;

    .line 446
    iget-object v1, v0, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/j;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 450
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/chat/e;->i:I

    goto/16 :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Ltv/periscope/android/ui/chat/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/j;

    iget-wide v0, v0, Ltv/periscope/android/ui/chat/j;->b:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/chat/e;->a(I)Ltv/periscope/android/ui/chat/j;

    move-result-object v0

    .line 349
    sget-object v1, Ltv/periscope/android/ui/chat/f;->b:[I

    iget-object v0, v0, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-virtual {v0}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 354
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 357
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 360
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 363
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 367
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 372
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 375
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ltv/periscope/android/ui/chat/t;

    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/t;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/chat/e;->a(Landroid/view/ViewGroup;I)Ltv/periscope/android/ui/chat/t;

    move-result-object v0

    return-object v0
.end method
