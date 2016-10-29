.class public Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;
.super Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/landing/ab;


# instance fields
.field final a:Lcom/twitter/android/livevideo/landing/r;

.field private final b:Lcom/twitter/android/livevideo/landing/y;

.field private d:Lcom/twitter/android/livevideo/landing/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const v0, 0x7f040179

    invoke-static {p1, v0, p0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/twitter/android/livevideo/landing/r;

    invoke-direct {v1, v0}, Lcom/twitter/android/livevideo/landing/r;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    .line 48
    new-instance v0, Lcom/twitter/android/livevideo/landing/y;

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/twitter/android/livevideo/landing/y;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/livevideo/landing/ab;Lrx/t;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->b:Lcom/twitter/android/livevideo/landing/y;

    .line 49
    return-void
.end method

.method private static a(Lcom/twitter/model/livevideo/d;)Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/livevideo/d;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    new-instance v1, Lcom/twitter/android/livevideo/landing/o;

    invoke-direct {v1}, Lcom/twitter/android/livevideo/landing/o;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/livevideo/d;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a(Lcom/twitter/model/livevideo/d;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private a(Lcom/twitter/model/livevideo/d;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a(Lcom/twitter/model/livevideo/d;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/twitter/media/request/b;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/card/property/ImageSpec;

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/twitter/media/request/b;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/r;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/r;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/r;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/r;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a:Lcom/twitter/android/livevideo/landing/r;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/r;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->d:Lcom/twitter/android/livevideo/landing/q;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->d:Lcom/twitter/android/livevideo/landing/q;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/landing/q;->a()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->b:Lcom/twitter/android/livevideo/landing/y;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/y;->a()V

    .line 90
    invoke-super {p0}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->onDetachedFromWindow()V

    .line 91
    return-void
.end method

.method public setEvent(Lcom/twitter/model/livevideo/d;)V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->b:Lcom/twitter/android/livevideo/landing/y;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/y;->a()V

    .line 59
    sget-object v0, Lcom/twitter/android/livevideo/landing/p;->a:[I

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v1, v1, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    invoke-virtual {v1}, Lcom/twitter/model/livevideo/BroadcastState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown event state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_1
    const v0, 0x7f0a0495

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a(Lcom/twitter/model/livevideo/d;I)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->b:Lcom/twitter/android/livevideo/landing/y;

    iget-wide v2, p1, Lcom/twitter/model/livevideo/d;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/livevideo/landing/y;->d(J)V

    goto :goto_0

    .line 66
    :pswitch_2
    const v0, 0x7f0a0494

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->a(Lcom/twitter/model/livevideo/d;I)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/twitter/android/livevideo/landing/q;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->d:Lcom/twitter/android/livevideo/landing/q;

    .line 85
    return-void
.end method
