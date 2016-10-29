.class Lcom/twitter/android/he;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTimelineFragment;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/twitter/android/he;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/twitter/android/he;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/HomeTimelineFragment;->b(Lcom/twitter/android/HomeTimelineFragment;)Lcom/twitter/android/timeline/bx;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->j()V

    .line 406
    return-void
.end method

.method public a(Lcom/twitter/app/common/list/aa;I)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/twitter/android/he;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/HomeTimelineFragment;->b(Lcom/twitter/android/HomeTimelineFragment;)Lcom/twitter/android/timeline/bx;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->l()V

    .line 401
    return-void
.end method

.method public b(Lcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/twitter/android/he;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/HomeTimelineFragment;->b(Lcom/twitter/android/HomeTimelineFragment;)Lcom/twitter/android/timeline/bx;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->k()V

    .line 411
    return-void
.end method
