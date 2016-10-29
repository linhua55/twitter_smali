.class public Luz;
.super Lcom/twitter/app/common/inject/f;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/inject/t;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/common/inject/f;-><init>(Landroid/app/Activity;Lcom/twitter/app/common/inject/t;)V

    .line 31
    return-void
.end method

.method static a(Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;)Lcom/twitter/android/client/au;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/android/client/au;

    invoke-direct {v0}, Lcom/twitter/android/client/au;-><init>()V

    const v1, 0x7f040400

    .line 38
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->a(I)Lcom/twitter/android/client/au;

    move-result-object v0

    const v1, 0x102000a

    .line 39
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->b(I)Lcom/twitter/android/client/au;

    move-result-object v0

    new-instance v1, Luk;

    invoke-direct {v1}, Luk;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->a(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Lcom/twitter/android/client/au;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Lcom/twitter/android/client/au;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/twitter/android/client/au;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method static a(Lcom/twitter/android/av/watchmode/g;Lcom/twitter/android/av/watchmode/view/a;Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;)Lcwb;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/android/av/watchmode/view/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcwb;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/twitter/android/av/watchmode/view/c;-><init>([Lcwb;)V

    return-object v0
.end method
