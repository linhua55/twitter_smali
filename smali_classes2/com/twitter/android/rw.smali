.class Lcom/twitter/android/rw;
.super Lcom/twitter/app/common/list/f;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/f",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;Lcom/twitter/app/common/list/h;)V
    .locals 0

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/twitter/android/rw;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0, p2}, Lcom/twitter/app/common/list/f;-><init>(Lcom/twitter/app/common/list/h;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/x;)Z
    .locals 1

    .prologue
    .line 1775
    instance-of v0, p1, Lbsj;

    if-eqz v0, :cond_0

    check-cast p1, Lbsj;

    invoke-virtual {p1}, Lbsj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
