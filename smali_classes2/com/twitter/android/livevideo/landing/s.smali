.class Lcom/twitter/android/livevideo/landing/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lbpu;",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/s;->a:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpu;)Lcom/twitter/model/livevideo/d;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p1, Lbpu;->f:Lcom/twitter/model/livevideo/d;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lbpu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/s;->a(Lbpu;)Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method
