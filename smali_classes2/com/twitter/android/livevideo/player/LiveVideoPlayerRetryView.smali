.class public Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;
.super Landroid/widget/LinearLayout;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x7f04017b

    invoke-static {p1, v0, p0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f130437

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->a:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f13043a

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->b:Landroid/widget/ImageView;

    .line 38
    return-void
.end method


# virtual methods
.method getErrorMessageView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method getRetryButton()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
