.class Lcom/twitter/android/livevideo/landing/v;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/v;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/v;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->j()V

    .line 168
    return-void
.end method

.method public a(Lcom/twitter/app/common/list/aa;I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/v;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->l()V

    .line 163
    return-void
.end method

.method public b(Lcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/v;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->k()V

    .line 173
    return-void
.end method
