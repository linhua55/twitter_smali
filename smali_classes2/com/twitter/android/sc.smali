.class Lcom/twitter/android/sc;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/twitter/android/sc;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TimelineFragment;Lcom/twitter/android/rr;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/twitter/android/sc;-><init>(Lcom/twitter/android/TimelineFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 392
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/sc;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/twitter/library/service/z;->a(Lcom/twitter/library/service/x;)V

    .line 396
    instance-of v0, p1, Lbtz;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/twitter/android/sc;->a:Lcom/twitter/android/TimelineFragment;

    check-cast p1, Lbtz;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lbtz;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    instance-of v0, p1, Lbuc;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/twitter/android/sc;->a:Lcom/twitter/android/TimelineFragment;

    check-cast p1, Lbuc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lbuc;)V

    goto :goto_0

    .line 400
    :cond_2
    instance-of v0, p1, Lbus;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/twitter/android/sc;->a:Lcom/twitter/android/TimelineFragment;

    check-cast p1, Lbus;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lbus;)V

    goto :goto_0
.end method
