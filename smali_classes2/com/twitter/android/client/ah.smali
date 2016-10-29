.class public abstract Lcom/twitter/android/client/ah;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"

# interfaces
.implements Lcom/twitter/internal/android/service/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<TP;TS;>;",
        "Lcom/twitter/internal/android/service/c",
        "<TP;",
        "Lcom/twitter/android/client/ah",
        "<TP;TS;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/client/y;

.field private final b:Lcom/twitter/android/client/notifications/StatusBarNotif;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/android/client/y;Lcom/twitter/android/client/notifications/StatusBarNotif;)V
    .locals 0

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 1526
    iput-object p2, p0, Lcom/twitter/android/client/ah;->a:Lcom/twitter/android/client/y;

    .line 1527
    iput-object p3, p0, Lcom/twitter/android/client/ah;->b:Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 1528
    invoke-virtual {p0, p0}, Lcom/twitter/android/client/ah;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 1529
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/client/notifications/StatusBarNotif;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/twitter/android/client/ah;->b:Lcom/twitter/android/client/notifications/StatusBarNotif;

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/ah",
            "<TP;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1550
    return-void
.end method

.method protected abstract a(Lcom/twitter/android/client/y;Lcom/twitter/android/client/notifications/StatusBarNotif;Lcom/twitter/internal/android/service/ab;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/y;",
            "Lcom/twitter/android/client/notifications/StatusBarNotif;",
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;)V"
        }
    .end annotation
.end method

.method public synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1507
    check-cast p1, Lcom/twitter/android/client/ah;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/ah;->b(Lcom/twitter/android/client/ah;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/twitter/android/client/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/twitter/android/client/ah",
            "<TP;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1555
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1507
    check-cast p2, Lcom/twitter/android/client/ah;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/ah;->a(Ljava/lang/Object;Lcom/twitter/android/client/ah;)V

    return-void
.end method

.method public final b(Lcom/twitter/android/client/ah;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/ah",
            "<TP;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/twitter/android/client/ah;->b:Lcom/twitter/android/client/notifications/StatusBarNotif;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v0

    .line 1561
    iget-object v1, p0, Lcom/twitter/android/client/ah;->a:Lcom/twitter/android/client/y;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/y;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/ah;->a:Lcom/twitter/android/client/y;

    iget-object v2, p0, Lcom/twitter/android/client/ah;->b:Lcom/twitter/android/client/notifications/StatusBarNotif;

    invoke-virtual {p1}, Lcom/twitter/android/client/ah;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/twitter/android/client/ah;->a(Lcom/twitter/android/client/y;Lcom/twitter/android/client/notifications/StatusBarNotif;Lcom/twitter/internal/android/service/ab;)V

    .line 1565
    iget-object v1, p0, Lcom/twitter/android/client/ah;->a:Lcom/twitter/android/client/y;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/y;->a(I)V

    goto :goto_0
.end method

.method public synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1507
    check-cast p1, Lcom/twitter/android/client/ah;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/ah;->a(Lcom/twitter/android/client/ah;)V

    return-void
.end method
