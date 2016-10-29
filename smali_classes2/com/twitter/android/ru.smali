.class Lcom/twitter/android/ru;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/af;


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/twitter/android/ru;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;I)Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 1

    .prologue
    .line 536
    if-eqz p5, :cond_0

    .line 537
    iget-object v0, p0, Lcom/twitter/android/ru;->a:Lcom/twitter/android/TimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/TimelineFragment;->d(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/hn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/twitter/android/ru;->a:Lcom/twitter/android/TimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/TimelineFragment;->d(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/hn;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/hn;->a()V

    .line 541
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
