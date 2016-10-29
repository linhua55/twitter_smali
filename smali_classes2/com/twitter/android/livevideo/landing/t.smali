.class Lcom/twitter/android/livevideo/landing/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lbpu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/t;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpu;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/t;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->s:Labq;

    iget v1, p1, Lbpu;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Labq;->a(J)V

    .line 130
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Lbpu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/t;->a(Lbpu;)V

    return-void
.end method
