.class Lcom/twitter/android/livevideo/landing/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/landing/q;


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/c;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/h;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/h;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->e(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/h;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->e(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->v()V

    .line 164
    :cond_0
    return-void
.end method
