.class Lcom/twitter/android/rq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/twitter/library/media/widget/TweetMediaView;

.field public final d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

.field public final e:Lcom/twitter/android/rm;

.field public final f:Landroid/view/View;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/view/View;

.field public final i:Lcom/twitter/android/trends/TrendBadgesView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2266
    const v0, 0x7f13075f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rq;->a:Landroid/widget/TextView;

    .line 2267
    const v0, 0x7f1301e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rq;->g:Landroid/widget/TextView;

    .line 2268
    const v0, 0x7f130726

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rq;->b:Landroid/widget/TextView;

    .line 2269
    const v0, 0x7f1304a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/TweetMediaView;

    iput-object v0, p0, Lcom/twitter/android/rq;->c:Lcom/twitter/library/media/widget/TweetMediaView;

    .line 2270
    const v0, 0x7f1304d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/twitter/android/rq;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 2271
    const v0, 0x7f130761

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/rq;->h:Landroid/view/View;

    .line 2272
    const v0, 0x7f130762

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/rq;->f:Landroid/view/View;

    .line 2273
    new-instance v0, Lcom/twitter/android/rm;

    invoke-direct {v0, p1}, Lcom/twitter/android/rm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/rq;->e:Lcom/twitter/android/rm;

    .line 2274
    const v0, 0x7f130760

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/trends/TrendBadgesView;

    iput-object v0, p0, Lcom/twitter/android/rq;->i:Lcom/twitter/android/trends/TrendBadgesView;

    .line 2275
    return-void
.end method
